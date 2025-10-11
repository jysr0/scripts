#!/bin/sh

echo "🔳$(mpstat -u | awk '/all/ {print $4}' | awk -F'.' '{print $1}')%"
