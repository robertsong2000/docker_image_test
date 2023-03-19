FROM openanolis/anolisos:8.6-aarch64

RUN yum install -y epel-release \
	&& yum install -y wget mock-core-configs rpm-build rpmdevtools \
	&& useradd build \
	&& usermod -a -G mock build \
	&& echo root:root123 | chpasswd \
	&& sed -i "/include/a\include(\'templates/epel-8.tpl\')" /etc/mock/anolis-8-aarch64.cfg

USER build
WORKDIR /home/build
