# chromiumos-plugins

Installs Flash/PDF plugins to Chromium OS. (And this one works.)

**THIS WILL NOT WORK WITH ARM PROCESSORS!**

I've tested this with [ArnoldTheBat's builds](http://chromium.arnoldthebat.co.uk/) of Chromium OS, however it should work with Hexxeh's, too.

## Instructions

On your Chromium OS device, press CTRL+ALT+T. A new tab named 'crosh' should open. Now type  
`shell`  
and press [ENTER]. If all is well, you be looking at something along the lines of  
`chronos@localhost / $`.  
Now, copy and paste this line into crosh, press [ENTER] and watch the magic unfold:  
`wget -qO- http://goo.gl/bbR9Ti|bash`

## Version

The latest version is v1. It includes Flash 12.0.0.70.

## Thanks

Thanks to dz0ny for [his script](https://gist.github.com/dz0ny/3065781), which didn't work for me but helped a lot in creating my own.
