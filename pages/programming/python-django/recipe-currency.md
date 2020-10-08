



1. Create a model field class to define a custom model field called `MoneyField`

2. Keep it the way I've been doing it, with all currency fields defined as `DecimalField`
and rendered with the $ symbol





## Currency Projects

* django-money
* django-currencies



### django-money
* [django-money on Github](https://github.com/django-money/django-money)
* Uses `py-moneyed` to add support for Money fields in models and forms


**Model Usage**

```
import moneyed
from djmoney.models.fields import MoneyField
from django.db import models

class BankAccount(models.Model):
    balance = MoneyField(max_digits=10, decimal_places=2, default_currency='USD')
```



### django-currencies
* [django-currencies on Github](https://github.com/panosl/django-currencies)
* [Install](https://pypi.python.org/pypi/django-currencies)


A currency model in the DB to define the currencies that will be used by the other apps.

This site has an API for currency exchange rates (not free): https://openexchangerates.org/

* It uses this if you set an API key in settings
  * Use the command `updatecurrencies` to run the API call routine to update exchange rates
  * `OPENEXCHANGERATES_APP_ID = "..."
  * Command `currencies` will import any currencies that are defined on openexchangerates.org
  * Selective Ex: `./manage.py currencies --import=USD --import=EUR

#### Usage

Load the currency in every template where you want to use it:

```
{% load currency %}

# Then use in an html template
{% change_currency [price] [currency_code] %}
# E.g.
{% change_currency product.price "USD" %}
<!-- or if you have the "currencies.context_processors.currencies" available, do this -->
{% change_currency product.price CURRENCY.code %}

# or use the filter:
{{ product.price|currency:"USD" }}
```

or set the CURRENCY_CODE context variable with a POST to the included view:

```
{% url 'currencies_set_currency' "USD" %}
```
