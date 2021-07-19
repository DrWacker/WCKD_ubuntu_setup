FROM ubuntu

# Some steps might require sudo
RUN apt update \
  && apt install -y git \
  && git clone https://github.com/DrWacker/WCKD_ubuntu_setup.git \
  && cd WCKD_ubuntu_setup && git checkout working && cd ..\
  && chmod 755 WCKD_ubuntu_setup/install.sh \
  && WCKD_ubuntu_setup/install.sh

