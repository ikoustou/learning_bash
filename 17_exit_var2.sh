#!/bin/bash
TARGET_HOST="google.com"

ping -c 1 $TARGET_HOST && echo "host is reachable" 
ping -c 1 $TARGET_HOST || echo "host is unreachable" 
