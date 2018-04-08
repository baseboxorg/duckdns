#!/usr/bin/env bash

DUCKPATH=/etc/duckdns.d
TOKEN=changeme
DOMAINS=moo

curl -sSv "https://www.duckdns.org/update?domains=${DOMAINS}&token=${TOKEN}&ip=" \
  2>> ${DUCKPATH}/stderr.log \
   >> ${DUCKPATH}/stdout.log

printf ' - ' >> ${DUCKPATH}/stdout.log

date >> ${DUCKPATH}/stdout.log
