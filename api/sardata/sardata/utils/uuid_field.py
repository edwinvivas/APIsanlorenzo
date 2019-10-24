"""
This file is based on https://github.com/foresmac/django-binaryuuidfield/tree/initial-setup
"""

import uuid

from django import forms
from django.core import exceptions
from django.db import models
from django.utils.translation import ugettext_lazy as _


# https://dev.mysql.com/doc/refman/8.0/en/miscellaneous-functions.html#function_uuid-to-bin
def uuid_to_bin(value, swap=False):
    if not swap:
        return value.bytes
    bin = value.bytes
    return bin[6:8] + bin[4:6] + bin[0:4] + bin[8:]


# https://dev.mysql.com/doc/refman/8.0/en/miscellaneous-functions.html#function_bin-to-uuid
def bin_to_uuid(bin, swap=False):
    if not swap:
        return uuid.UUID(bytes=bin)
    return uuid.UUID(bytes=bin[4:8] + bin[2:4] + bin[0:2] + bin[8:])


class BinaryUUIDField(models.Field):
    """
    A UUID field type backed with binary storage, and an index-optimized
    byte order as the sensible if swap=True.
    """

    default_error_messages = {
        'invalid': _("'%(value)s' is not a valid UUID."),
    }
    description = 'Universally unique identifier with binary storage on MySQL'
    empty_strings_allowed = False

    def __init__(self, verbose_name=None, swap=False, **kwargs):
        kwargs['max_length'] = 36  # UUID can take hex string with hyphens
        self.swap = swap
        super(BinaryUUIDField, self).__init__(verbose_name, **kwargs)

    def deconstruct(self):
        name, path, args, kwargs = super(BinaryUUIDField, self).deconstruct()
        if self.swap:
            kwargs['swap'] = True

        del kwargs['max_length']

        return name, path, args, kwargs

    def db_type(self, connection):
        if connection.vendor != 'mysql':
            raise NotImplementedError('This field only supports MySQL at this time.')
        return 'binary(16)'

    def rel_db_type(self, connection):
        return self.db_type(connection)

    def get_db_prep_value(self, value, connection, prepared=False):
        if value is None:
            return None
        if not isinstance(value, uuid.UUID):
            value = self.to_python(value)
        return uuid_to_bin(value, swap=self.swap)

    def from_db_value(self, value, expression, connection):
        if isinstance(value, bytes):
            try:
                return self.to_python(bin_to_uuid(value, swap=self.swap))
            except (AttributeError, ValueError):
                raise exceptions.ValidationError(
                    self.error_messages['invalid'],
                    code='invalid',
                    params={'value': value},
                )
        return self.to_python(value)

    def to_python(self, value):
        if value is not None and not isinstance(value, uuid.UUID):
            try:
                if isinstance(value, bytes):
                    return uuid.UUID(bytes=value)
                if isinstance(value, int):
                    return uuid.UUID(int=value)
                return uuid.UUID(value)
            except (AttributeError, ValueError):
                raise exceptions.ValidationError(
                    self.error_messages['invalid'],
                    code='invalid',
                    params={'value': value},
                )
        return value

    def formfield(self, **kwargs):
        return super().formfield(**{
            'form_class': forms.UUIDField,
            **kwargs,
        })
