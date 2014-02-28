#!/bin/bash
clear
# chromiumos-plugins v1 by lowons
# Installs Adobe Flash (v 12.0.0.70) and PDF viewer for your Chromium OS.

if [ `uname -m` == 'x86_64' ]; then
 FLURL="http://goo.gl/AXMJtZ"
 PDFURL="http://goo.gl/FmSje3"
else
 FLURL="http://goo.gl/LlVbgZ"
 PDFURL="http://goo.gl/kOzlff"
fi

if [[ $EUID -ne 0 ]]; then
 echo "This script must be run as root.. Type \"sudo su\"" 1>&2
 exit 1
fi

mount -o remount, rw /
cd ~

# Install PDF (the easy bit)
echo "*****************************"
echo "* Downloading PDF Plugin... *"
echo "*****************************"
echo
wget -O- $PDFURL > libpdf.so
clear
echo "****************************"
echo "* Installing PDF Plugin... *"
echo "****************************"
echo
mv -v libpdf.so /opt/google/chrome/
echo Done.
sleep 1
clear

# Install flash (the trickier bit)
echo "****************************"
echo "* Downloading Flash Plugin *"
echo "****************************"
echo
wget -O- $FLURL > flash.tar
clear
echo "***************************"
echo "* Installing Flash Plugin *"
echo "***************************"
echo
mkdir -pv /opt/google/chrome/pepper
mv -v flash.tar /opt/google/chrome/pepper/
cd /opt/google/chrome/pepper/
tar xvf ./flash.tar
rm -v flash.tar
echo Done.
sleep 1
clear

# Finish off
echo "*********"
echo "* Done! *"
echo "*********"
echo
echo "Flash and PDF should (hopefully) be installed."
echo "You must restart your computer now."
echo "Enjoy!"
