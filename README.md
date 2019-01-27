# Singularity aspera connect

[![Singularity Hub](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/2200)

Singularity image for Aspera Connect client.

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
singularity run aspera-singularity.simg -QT -l 300m -P33001 -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/ERR036/ERR036000/ERR036000_1.fastq.gz .
```

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/tpall/aspera-singularity.
