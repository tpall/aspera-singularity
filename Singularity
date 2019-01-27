BootStrap: docker
From: ubuntu:16.04

%labels
  Maintainer tpall

%apprun ascp
  exec ascp "${@}"

%post
  export ASCP_VERSION=3.8.1.161274
  
  apt-get update
  apt-get install -y --no-install-recommends \
    wget
  
  wget --no-check-certificate https://download.asperasoft.com/download/sw/connect/3.8.1/ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.tar.gz
  tar -xzf ibm-aspera-connect-3.8.1.161274-linux-g2.12-64.tar.gz
  ./ibm-aspera-connect-3.8.1.161274-linux-g2.12-64.tar.gz

  # Clean up
  rm ibm-aspera-connect-3.8.1.161274-linux-g2.12-64.*
  rm -rf /var/lib/apt/lists/*

%environment
  PATH=$PATH:~/.aspera/connect/bin
  export PATH
