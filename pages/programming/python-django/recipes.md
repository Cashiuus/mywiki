# Recipes

[Timezones](recipe-timezones.md) | [Currency](recipe-currency.md)





## Blank Model shell
```
from django.urls import reverse


class Model(models.Model):
    """
    Description here
    """
    name = models.CharField(max_length=255)

    class Meta:
        verbose_name = _('Name')
        verbose_name_plural = _('Names')
        ordering = ('order', 'name')
        #unique_together = ('', '',)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('client.views.details', args=[str(self.id)])

    # concat 2 fields together
    #def contact_fullname(self):
        #return "{0} {1}".format(self.first_name, self.last_name)


```



### Summing Columns for Totals

```
from django.db.models import Sum

<model>.objects.aggregate(Sum('price))
```


