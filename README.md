The Haskell ABS tree for ArchLinux
==================================

This project contains an ArchLinux ABS tree that's used to compile a binary
repository of Haskell packages. If you'd like to use that repository, then
append the following two lines at the end of your /etc/pacman.conf file:

  [haskell]
  Server = http://andromeda.kiwilight.com/$repo/$arch

If you'd like to build the repository on your own machine, then please make
sure that the devtools package is installed, and then run the ./makeworld
script that's included in this directory. The script will create a clean
ArchLinx installation in a chroot environment at /var/tmp/chroot-${arch},
where ${arch} is either 'i686' or 'x86_64', depending on your hardware. It
is also possible to cross-compile the i686 repository on 64-bit machines by
running the script as follows: 'setarch i686 ./makeworld'.
