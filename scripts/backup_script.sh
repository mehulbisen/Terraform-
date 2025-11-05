#!/bin/bash

SRCDIR="/d/VS-code/scripts/dir1/"
DESTDIR="/d/VS-code/scripts/"
FILENAME=backup1-$(date +%-Y%-m%-d)-$(date +%-T).tgz 
tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR

