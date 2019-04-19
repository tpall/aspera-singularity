BootStrap: docker
From: debian:stretch

%labels
  Maintainer tpall
  ASCP_VERSION 3.9.1.171801

%apprun ascp
  exec ascp "${@}"

%runscript
  exec ascp "${@}"

%post
  
  # Install wget
  apt-get update \
     && apt-get install -y --no-install-recommends wget
  
  # Install aspera client
  wget --no-check-certificate https://download.asperasoft.com/download/sw/connect/3.9.1/ibm-aspera-connect-3.9.1.171801-linux-g2.12-64.tar.gz \
      && tar -xzf ibm-aspera-connect-3.9.1.171801-linux-g2.12-64.tar.gz \
      && chmod +x ibm-aspera-connect-3.9.1.171801-linux-g2.12-64.sh \
      && ./ibm-aspera-connect-3.9.1.171801-linux-g2.12-64.sh
  
  mkdir -p /usr/local/app/aspera/connect \
      && cp -r ~/.aspera/connect /usr/local/app/aspera/
      
  ln -s /usr/local/app/aspera/connect/bin/ascp /usr/local/bin
  ln -s /usr/local/app/aspera/connect/etc/asperaweb_id_dsa.openssh /usr/local/etc

  # Clean up
  rm ibm-aspera-connect-3.9.1.171801-linux-g2.12-64.* \
      && rm -rf /var/lib/apt/lists/*
