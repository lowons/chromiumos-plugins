# chromiumos-plugins

Installs Flash/PDF plugins to Chromium OS. (And this one works.)

I've tested this with [ArnoldTheBat's builds](http://chromium.arnoldthebat.co.uk/) of Chromium OS, however it should work with Hexxeh's, too.

## Instructions

On your Chromium OS device, press CTRL+ALT+T. A new tab named 'crosh' should open. Now type `shell` and press [ENTER]. If all is well, you be looking at something along the lines of `chronos@localhost / $`. Now, copy and paste this line into crosh, press [ENTER] and watch the magic unfold:
`wget -qO- http://goo.gl/bbR9Ti|bash`

## Thanks
Thanks to dz0ny for [his script](https://gist.github.com/dz0ny/3065781), which didn't work for me but helped a lot in creating my own.
