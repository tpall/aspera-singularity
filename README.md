# Singularity aspera connect

[![Singularity Hub](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/2200)
[![Build Status](https://travis-ci.org/tpall/aspera-singularity.svg?branch=master)](https://travis-ci.org/tpall/aspera-singularity)

Singularity image for [Aspera Connect client](https://downloads.asperasoft.com/en/downloads/8?list).

This is still a work in progress.

## Build

You can build a local Singularity image named `aspera-singularity.simg` with:

```sh
sudo singularity build aspera-singularity.simg Singularity
```

## Deploy

Instead of building it yourself you can download the pre-built image from
[Singularity Hub](https://www.singularity-hub.org) with:

```sh
singularity pull --name aspera-singularity.simg shub://tpall/aspera-singularity
```

## Run

The `ascp` command is launched using the default run command:

```sh
singularity run aspera-singularity.simg
```

or as an explicit app:

```sh
singularity run --app ascp aspera-singularity.simg
```

or

```sh
singularity exec aspera-singularity.simg ascp
```

Example:

```console
Usage: ascp [OPTION] SRC... DEST
          SRC to DEST, or multiple SRC to DEST dir
          SRC, DEST format: [[user@]host:]PATH
Display full usage: -h,--help
```

## Downloading files using Aspera
Using example from [ENA](https://www.ebi.ac.uk/ena/browse/read-download#downloading_files_aspera):

```sh
singularity exec aspera-singularity.simg ascp -QT -l 300m -P33001 -i /usr/local/app/aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR555/009/SRR5557999/SRR5557999_1.fastq.gz .
```

or simply by using singularity run

```sh
singularity run aspera-singularity.simg era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR555/009/SRR5557999/SRR5557999_1.fastq.gz .
```

or as an explicit app:
```sh
singularity run --app ascp aspera-singularity.simg era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR555/009/SRR5557999/SRR5557999_1.fastq.gz .
```
or
```sh
singularity run shub://tpall/aspera-singularity  era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR555/009/SRR5557999/SRR5557999_1.fastq.gz .
```


## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/tpall/aspera-singularity.
