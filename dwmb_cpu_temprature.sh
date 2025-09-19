#!/bin/sh

echo "🔳 $(sensors | tr -d '+' | awk '/^Package/ {print $4}')"
