



## Setup Outline
1. Setup OS dependencies
2. Setup env
2. Setup postgres
3. Create user accounts
4. Migrate DB








### Setup PostgreSQL and Pyscopg2 for a Django Project


```
# Start postgres daemon/service
/usr/lib/postgresql/10/bin/pg_ctl -D
```





#### Mac OS X



```
brew install postgresql
#brew install postgresql@9.5

pip install psycopg2
# Start the service manually
postgres -D /usr/local/var/postgres &
# Create a new DB
createdb -E UTF-8 <db_name>
# First-run only: initialize the db once you've created it
initdb -D /usr/local/var/postgres

# If psycopg2 fails, check if xcode tools are installed
xcode-select --install

```



## Setup Dedicated user for Django prod webapp


Debian
```
# Add 'wgersvc' user with no password
sudo adduser wgersvc --disabled-password --gecos ""
```

