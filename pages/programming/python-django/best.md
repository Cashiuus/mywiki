

# Core Syntax Best Practices





## Models

### Model Code Sequence
* [Best Practice](http://steelkiwi.com/blog/best-practices-working-with-django-models-python/)

1. Constants(such as choices)
2. Fields
3. Custom Manager indication
4. Class Meta
5. def __str__
6. Other special methods
7. def clean
8. def save
9. def get_absolute_url
10. Other methods



### Currency

Do not use `FloatField`, instead use `DecimalField`




# Database Syntax Best Practices




# Migrations


### Clean migration files from a project

1. Copy entire project elsewhere and ensure you are starting with a new (or no) database without "migrations" table ("django_migrations" table)

2. Delete all of your migrations files

3. Run: `python manage.py makemigrations` and then `python manage.py migrate`

4. Verify this worked to successfully init a new DB. If not, apply fixes back in original project and try again.

5. Copy these migration files back to original project, deleting the original ones for these cleaner versions.

6. Finally, run: `python manage.py migrate --fake-initial`








## Datetime Formatting

```
# Setting "now" as default on a field, do not use now(), just now with no parentheses
default=datetime.now,
```

Default format:
```
%d = day number
%m = month number
%B = month full name ("November")
%b = month 3-char name ("Nov")
%y = 2-digit year
%Y = 4-digit year
%H = Hours, in 24-hr format
%M = Minutes
```
