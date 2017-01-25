# GHOST-MP-Docker

## Build
```
# git clone
git clone https://github.com/metaVariable/GHOST-MP-Docker.git
cd GHOST-MP-Docker

# build  image
docker build . -t ghostmp
```

## Usage 
```
# Interactive mode
docker run -it ghostmp  /bin/bash

# Interactive mode (data mount)
## your current directory $(pwd) will be mounted to [/data] path in container.
docker run -it -v $(pwd):/data/  ghostmp  /bin/bash
```

Please refer to [here](http://www.bi.cs.titech.ac.jp/ghostmp/manual.html) for details of command.
