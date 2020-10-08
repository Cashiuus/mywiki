

# FinalRecon
- - - -
Project: https://github.com/thewhiteh4t/FinalRecon



## Top Examples


```
# Standard scan, with full enum
python3 finalrecon.py -t 2 -o csv --full  https://patheon.com
```



```
# Check headers

`python3 finalrecon.py --headers <url>`

# Check ssl Certificate

`python3 finalrecon.py --sslinfo <url>`

# Check whois Information

`python3 finalrecon.py --whois <url>`

# Crawl Target

`python3 finalrecon.py --crawl <url>`

# Directory Searching

`python3 finalrecon.py --dir <url> -e txt,php -w /path/to/wordlist`

# full scan

`python3 finalrecon.py --full <url>`
```





## Setup


 1. clone project and `pip install -r requirements.txt`
 2. Configure API keys (Keys stored in `finalrecon/conf/keys.json` )
    1. Create a Facebook Developer account
    2. Create your first "facebook app"
    3. Copy your App ID.
    4. Go to Settings and view your App Secret. Copy that also.
    5. Paste those into the `keys.json` file in this format:
        ` "APP_ID|APP_SECRET" `
    6. Note: You get 200 API calls per hour by default.





## Defaults
If you don't specify parameters, keep in mind these defaults:

  * Results are output as 'txt' into a 'dumps' subdirectory
  * 30 threads are used unless you specify lower (-t 5)
  * Default wordlist used is in ./wordlists/dirb_common.txt




## Syntax
As of Oct 8, 2020

```
usage: finalrecon.py [-h] [--headers] [--sslinfo] [--whois] [--crawl] [--dns] [--sub] [--trace] [--dir] [--ps] [--full] [-t T] [-T T]
                     [-w W] [-r] [-s] [-d D] [-e E] [-m M] [-p P] [-tt TT] [-o O]
                     url

FinalRecon - The Last Recon Tool You Will Need | v1.0.7

positional arguments:
  url         Target URL

optional arguments:
  -h, --help  show this help message and exit
  --headers   Header Information
  --sslinfo   SSL Certificate Information
  --whois     Whois Lookup
  --crawl     Crawl Target
  --dns       DNS Enumeration
  --sub       Sub-Domain Enumeration
  --trace     Traceroute
  --dir       Directory Search
  --ps        Fast Port Scan
  --full      Full Recon

Extra Options:
  -t T        Number of Threads [ Default : 30 ]
  -T T        Request Timeout [ Default : 30.0 ]
  -w W        Path to Wordlist [ Default : wordlists/dirb_common.txt ]
  -r          Allow Redirect [ Default : False ]
  -s          Toggle SSL Verification [ Default : True ]
  -d D        Custom DNS Servers [ Default : 1.1.1.1 ]
  -e E        File Extensions [ Example : txt, xml, php ]
  -m M        Traceroute Mode [ Default : UDP ] [ Available : TCP, ICMP ]
  -p P        Port for Traceroute [ Default : 80 / 33434 ]
  -tt TT      Traceroute Timeout [ Default : 1.0 ]
  -o O        Export Output [ Default : txt ] [ Available : xml, csv ]
```



