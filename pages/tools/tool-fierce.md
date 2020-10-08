fierce.pl
=========









## REAL-WORLD EXAMPLES

```
fierce.pl -range <ip_range>

fierce.pl -dns <domain_name>

# Perform all tests with 2 threads instead of default 5 (delay 7, not default 3), and output results to file
fierce -dns domain.com -threads 2 -delay 7 -file fierce-domain

# Save response headers
fierce -dns example.com -connect headers.txt

# Stop if zone transfer works
fierce -dns example.com -ztstop

# Noisy way to find other domains spammers might be using
fierce -dns example.com -nopattern

# Scan an IP range (must combine with -dnsserver)
fierce -range 10.10.10.0-255 -dnsserver ns1.example.com

# Bruteforce guess subdomains by specifying a dictionary file
fierce -dns example.com -subdomain hosts.txt


# -- Output options --
# Output everything in response, not just headers, and output to txt file [txt|xml|html|all]
fierce -dns example.com -connect response.txt -fulloutput -format txt

# Output using a template
fierce -dns example.com -output fierce-output -template
```



## RESOURCES
