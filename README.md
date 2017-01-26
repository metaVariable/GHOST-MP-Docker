# GHOST-MP-Docker

> GHOST-MP is a parallel sequence similarity search tool. It searches for similar sequences among nucleotide query sequences and amino acid sequence database like BLASTX.
> http://www.bi.cs.titech.ac.jp/ghostmp/

## Note
* This Docker image works on only 1 node (1 container)..

## Usage 
* Please refer to [here](http://www.bi.cs.titech.ac.jp/ghostmp/manual.html) for details of command.
* Please prepare yourself `db.fasta` and `query.fasta`.

## Interactive mode
```
docker run -it meta1127/ghostmp
./ghostmp_makedb -i db.fasta -o db
mpirun -n NUM_PROCESS ./ghostmp_search -i query.fasta -d db -o result
...
exit
```
## Interactive mode (data mount)
In this command, your current directory $(pwd) will be mounted to [/data] path in container.
```
docker run -it -v $(pwd):/data/  meta1127/ghostmp
./ghostmp_makedb -i /data/db.fasta -o /data/db
mpirun -n NUM_PROCESS ./ghostmp_search -i /data/query.fasta -d /data/db -o /data/result
...
exit
```

## Build (Optional)
```
# git clone
git clone https://github.com/metaVariable/GHOST-MP-Docker.git
cd GHOST-MP-Docker

# build  image
docker build . -t meta1127/ghostmp
```

## DockerHub
https://hub.docker.com/r/meta1127/ghost-mp-docker/
