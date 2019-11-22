#!/bin/bash
#1
New_File=$(find /backup -iname "*.txt"|sed -r 's#(.*)#mv \1 \1.bak#g|bash)
#2
tar czf /backup/123.tar.gz $(find -iname "*.bak")

#3
find /backup -iname "*.back"|sed -r "s#(.*).bak#mv \1bak \1#g'|bash

