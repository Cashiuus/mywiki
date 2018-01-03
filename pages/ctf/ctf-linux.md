Linux CTF Administration
========================


# Hardening

* Apache
* SMB
* PHP - php.ini configuration file; info.php
* FTP
* SSH
* Mail Services: smtp



## Monitoring

* cron
* user accounts on system
* remote access connections (ssh)





## Popular Commands
```
useradd <new_user> -g sudo
addgroup
userdel
# Use -r to also delete their home (~) directory
userdel -r
# Check who is logged on and what terminal(s) they are on
who -a

# Kill a shell, example on pts/2, which you can get via "who -a"
fuser -k pts/2

```


### Networking


**List Connections**
```
netstat -anop
```






## File Info

**List Open Files**
```
lsof -nPi
```


### Immutable / Sticky Bit Files

To get a list of all immutable files find / -type f ( -perm -4000 -o -perm -2000 ) -exec ls -lah {} ; 2>/dev/null from Justin Wray's Defensive Tools for the Blind ([http://sourceforge.net/p/dtftb/code/2/tree/trunk/linux/find_setid.sh])



### Logs / Logging
```
tail -n 100 /var/log/syslog
```









# Tricks

### Logging in without a password

If you are able to reboot the computer into single user mode, it will bypass password authentication allowing you to recover a system if you forgot or lose your root password.






# System Knowledge



### /etc/passwd

Each user has his own line of info separated with colons:

    username (1-32 characters)
    password (x means password is in /etc/shadow)
    User ID or UID ** Each user will get a user id or UID. That number will tell you what type of user they are. ** 0 root the administrator account ** 1-999 Service accounts and System administration ** 1000+ User accounts
    Group User ID GUID
    User info
    home directory
    shell


### /etc/shadow

The actual password info is stored in /etc/shadow encrypted

Each user has their own line of info separated by colons:

    username
    password ** If the beginning of the password field starts with "$id$Salt$hash" the password was stored with something besides DES (DES is easy to break) ** "$1$" represents MD5 ** "$2$" represents Blowfish ** "$3$" represents NT HASH ** "$4$" represents SHA1 ** "$5$" represents SHA-256 or SHA-384 ** "$6$" represents SHA-512 ** "NP" or "!" or null means the account has no password ** "LK" or "*" means the account is locked" ** "!!" means the password has expired
    Time since last password was changed (in epoch time or days since Jan. 1st 1970)
    Minimum Number of days between password changes
    Maximum Number of days the password is valid
    Warn is the number of days before a users password expires that he is warned
    Inactive number of days after password expires before that account is disabled
    Expire - when the user can no longer login (in epoch time)


Some New systems are using SHA-512 currently. This is set in /etc/pam.d/common-password



















# Resources

## Linux Guides:
* http://www.ee.surrey.ac.uk/Teaching/Unix
