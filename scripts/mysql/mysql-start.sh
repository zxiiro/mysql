#!/bin/bash
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

MYSQL_PID=/var/run/mysqld/mysqld.pid

exec /usr/bin/pidproxy $MYSQL_PID /usr/bin/mysqld_safe --pid-file=$MYSQL_PID
