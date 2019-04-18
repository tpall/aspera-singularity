BootStrap: docker
From: ubuntu:16.04

%labels
  Maintainer tpall

%apprun ascp
  exec ascp "${@}"

%runscript
  exec ascp "${@}"

%post
  export ASCP_VERSION=3.9.1.171801
  
  # Install wget
  apt-get update \
     && apt-get install -y --no-install-recommends \
     && wget
  
  # Install aspera client
  wget --no-check-certificate https://download.asperasoft.com/download/sw/connect/${ASCP_VERSION:0:5}/ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.tar.gz \
      && tar -xzf ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.tar.gz \
      && chmod +x ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.sh \
      && ./ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.sh

  # Clean up
  rm ibm-aspera-connect-${ASCP_VERSION}-linux-g2.12-64.* \
      && rm -rf /var/lib/apt/lists/*

%environment
  
