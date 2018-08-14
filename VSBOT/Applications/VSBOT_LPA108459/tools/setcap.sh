#!/bin/sh

###############################################################################
# Copyright (c) 2000-2018 Ericsson Telecom AB
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# https://www.eclipse.org/org/documents/epl-2.0/EPL-2.0.html
#
# Contributor: david.ferenc.vranics@ericsson.com
###############################################################################

resolved=$(readlink -f `which $0`)
toolsDir=$(dirname $resolved)
vsbotDir=${toolsDir%/tools}
if [ -x $vsbotDir/bin/vsbot ]
then
  setcap cap_net_raw,cap_net_admin=eip $vsbotDir/bin/vsbot
else
  echo "ERROR: $vsbotDir/bin/vsbot is not executable!"
fi
