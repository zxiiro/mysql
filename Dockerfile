#######################################################################
#
# Copyright (c) 2014 Eclipse Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#   Thanh Ha (Eclipse Foundation) - initial implementation
#
#######################################################################

FROM zxiiro/supervisor
MAINTAINER Thanh Ha <thanh.ha@eclipse.org>

RUN apt-get update

# Install mysql-server
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server

# Pull in scripts and resources
ADD etc/supervisor/conf.d /etc/supervisor/conf.d
ADD etc/mysql/my.cnf /etc/mysql/my.cnf
ADD scripts/mysql /scripts/mysql
RUN chmod 755 /scripts/mysql/*.sh
RUN /scripts/mysql/mysql-setup.sh

# MySQL
EXPOSE 3306

