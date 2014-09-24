#!/bin/sh

DSA=`ssh-keygen -l -f /tmate-slave/keys/ssh_host_dsa_key 2>&1 | cut -d\  -f 2`
RSA=`ssh-keygen -l -f /tmate-slave/keys/ssh_host_rsa_key 2>&1 | cut -d\  -f 2`
ECDSA=`ssh-keygen -l -f /tmate-slave/keys/ssh_host_ecdsa_key 2>&1 | cut -d\  -f 2`
echo Add this to your ~/.tmate.conf file
echo set -g tmate-server-host "<server ip/hostname>"
echo set -g tmate-server-port \<server port\>
echo set -g tmate-server-rsa-fingerprint   \"$RSA\"
echo set -g tmate-server-dsa-fingerprint   \"$DSA\"
echo set -g tmate-server-ecdsa-fingerprint   \"$ECDSA\"
echo set -g tmate-identity ""              # Can be specified to use a different SSH key.

touch /tmp/message.sh
