OSCP Resources and Methods
==========================



* [Falconspy's CherryTree Template](https://github.com/devzspy/oscp-certification/tree/master/Note%20Taking%20Tools/CherryTree%20Template/CTF_template.ctb)





### Spawning a TTY Shell

Often during pentests, you may obtain a shell without having tty. Here are some commands that allow you to spawn a tty shell. Some of this will depend on your foothold system's environment.

Many of these also allow you to escape jail shells. First 3 are the most commonly successful ones.

```
python -c 'import pty; pty.spawn("/bin/sh")'

echo os.system('/bin/bash')

/bin/sh -i

perl -e 'exec "/bin/sh";'

perl: exec "/bin/sh";

ruby: exec "/bin/sh"

lua: os.execute('/bin/sh')

# From within IRB
exec "/bin/sh"

# From within VI
:!bash
# or
:set shell=/bin/bash:shell

# From within Nmap
!sh
```






References

* [OSCP Developing a Methodology](https://medium.com/@falconspy/oscp-developing-a-methodology/32f4ab471fd6)

* [OSCP-Preparation](https://411hall.github.io/OSCP-Preparation/)

