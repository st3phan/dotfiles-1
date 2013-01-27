#!/bin/bash

# Get cputhrottle
curl "http://www.willnolan.com/cputhrottle/cputhrottle.gz" | gunzip > /usr/local/bin/cputhrottle
chmod +x /usr/local/bin/cputhrottle
