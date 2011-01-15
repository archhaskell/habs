The Haskell ABS tree for ArchLinux
==================================

This project contains a tree of ArchLinux PKGBUILDs that's used to compile a
binary repository of Haskell packages. If you'd like to use that repository,
then append the following two lines at the end of your `/etc/pacman.conf` file:

    [haskell]
    Server = http://andromeda.kiwilight.com/$repo/$arch

If you'd like to build the repository on your own machine, then please make
sure that the `devtools` package is installed, and then run the `./makeworld`
script that's included in this directory. The script will create a clean
ArchLinx installation in a chroot environment at `/var/tmp/chroot-${arch}`,
where `${arch}` is either `i686` or `x86_64`, depending on your hardware. It is
also possible to cross-compile the i686 repository on 64-bit machines by
running the script as follows: `setarch i686 ./makeworld`.

All PKGBUILDs in the project must be built with the latest release of
[cabal2arch][2].

The ArchHaskell project
=======================

Our main goal is to maintain a binary repository of up-to-date packages taken
form [hackageDB][1].  To achieve this we also maintain three repositories of
tools, libraries, and scripts:

* [cabal2arch][2] is the central tool which converts a CABAL file into a
  PKGBUILD, and optionally a `.install`.
* [archlinux][3] is the main dependency of `cabal2arch`.
* [archlinux-web][4] contains a library and a set of scripts that help with
  various web-related tasks such as updating the information on [hackageDB][1]
  on what versions of packages that are available for ArchLinux.

All discussion around our HABS tree and other packages take place on the
[ArchHaskell mailinglist][5].

The available packages
======================

Currently the repository contains less than 100 packages, which is less than
5% of the packages on [hackageDB][1].  We would of course like to cover 100%
of [hackageDB][1], but our resources, tools and processes don't allow it yet.

Choosing of the current set
--------------------------

The current set of packages was chosen in a very unstructured way, and we are
still discussing how to decide what packages we take on.  Please get involved
by joining the [mailinglist][5] is you have opinions on how we should pick the
packages we provide.

Adding individual packages
--------------------------

Suggestions for adding individual packages to the set are always welcome.
Just send the request to the [mailinglist][5].  Be aware though that each
added package adds to the burden of the team, so there is a real risk that
your request is denied.  That risk is reduced if you show an interest in
contributing to the project.

[1]: http://hackage.haskell.org/packages/hackage.html
[2]: https://github.com/archhaskell/cabal2arch
[3]: https://github.com/archhaskell/archlinux
[4]: https://github.com/archhaskell/archlinux-web
[5]: http://www.haskell.org/mailman/listinfo/arch-haskell
