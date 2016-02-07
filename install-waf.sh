#! /usr/bin/env bash

WAF_DIR=~/.home_bin

set -e

echo "Installing waf..."

mkdir -p $WAF_DIR
wget https://waf.io/waf-1.8.19
mv waf-1.8.19 $WAF_DIR/waf
chmod +x $WAF_DIR/waf

PATH=$WAF_DIR:$PATH

echo "Waf Installed Successfully!"