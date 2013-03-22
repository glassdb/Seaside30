#!/bin/bash -x
#
#  GLASS test driver for running GLASS builds on travisCI ... for now the code
#    is hosted elsewhere, but ultimately the packages will be managed here.
#
#  This boyo generates an old-style configuration load script similar to those 
#    used by GemTools and builderCI in before_gemstone.sh, but we're testing
#    a barebones load and test so no need for Metacello Scripting API, to be
#    pre-installed.
#
#      -verbose flag causes unconditional transcript display
#
# Copyright (c) 2013 VMware, Inc. All Rights Reserved <dhenrich@vmware.com>.
#

OUTPUT_PATH="${PROJECT_HOME}/tests/travisCI.st"

cat - >> $OUTPUT_PATH << EOF
| gitPath |
Transcript cr; show: 'travis--->${OUTPUT_PATH}'.
EOF

if [ "${GLASS}x" != "x" ] ; then
cat - >> $OUTPUT_PATH << EOF
Metacello image
  project: 'GLASS';
  get.
Metacello image
  project: 'GLASS';
  version: '${GLASS}';
  load.
EOF
fi

cat - >> $OUTPUT_PATH << EOF
|gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load Seaside30 from git repository"

Metacello new
  baseline: 'Seaside30';
  repository: 'filetree://', gitPath, '/Seaside30/packages';
  get.

Metacello new
  baseline: 'Seaside30';
  repository: 'filetree://', gitPath, '/Seaside30/packages';
  load: #( ${LOADS} ).

TravisCIHarness
  value: #( 'BaselineOfSeaside30' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

EOF

cat $OUTPUT_PATH

$BUILDER_CI_HOME/testTravisCI.sh "$@"
 
