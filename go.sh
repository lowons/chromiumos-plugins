#!/bin/bash
# This script changes user to root, then downloads and runs chromiumos-plugins.sh
echo "The password is either 'password' or 'facepunch' (without the quotes)."
sudo su -c "wget -O- http://goo.gl/dtXQDt | bash"
