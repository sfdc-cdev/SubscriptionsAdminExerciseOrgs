#!/bin/bash
echo "Variables"
dhMySalesforceDomain=$TEST_Domain
dhSessionId=$TEST_Session
soALIAS="soTestOrg"
dhALIAS="dhTestOrg"
echo "DH (URL): $dhMySalesforceDomain"
echo "DH (SESSION): $dhSessionId"
echo "SO: $soALIAS"
echo "DH: $dhALIAS"
source "./orgInit.sh"
exit 0
