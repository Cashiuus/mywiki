



1. Create a "fields.py" file that contains a 2-tuple defining timezones.

```
TIMEZONES = (
    ('utc', 'UTC'),
)
```

2. Create a custom timezone model field in the same file

```

class TimeZoneField():



```


3. From your `models.py` file, import this resource and then use it in a model definition

```
from .fields import TimeZoneField

contact_timezone = TimeZoneField(_("timezone"))


```


