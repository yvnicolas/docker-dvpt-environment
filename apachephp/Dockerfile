# Installing an apache server and php as well as php myadmin to be able to look at mysql databases
#

FROM yvnicolas/sandbox:basecontainer
MAINTAINER Yves Nicolas <yves.nicolas@dynamease.com>

# Install

RUN apt-get update && apt-get install -y apache2 php5 libapache2-mod-php5 php5-mysql phpmyadmin

EXPOSE 80
CMD ["apache2"]
