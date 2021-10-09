#!/bin/bash

url="http://mirror.filearena.net/pub/speed/SpeedTest_16MB.dat?_ga=2.103161856.1428494463.1587349458-1731585439.1587349458"

curl ${url} -o TestFile 1

#curl -I ${url}
