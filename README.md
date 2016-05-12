The Haskell ABS tree for ArchLinux
====================================

This project contains the database used to generate an ABS tree of ArchLinux
PKGBUILDs.  These PKGBUILDs can then be used to compile a binary repository of
Haskell packages.  If you want to use the official build of this repository
then add the following two lines to your `/etc/pacman.conf` file:

    [haskell-core]
    Server =  http://xsounds.org/~haskell/core/$arch

The packages and database are signed with the following key:

    pub   2048D/4209170B 2012-12-26
          Key fingerprint = F310 4992 EBF2 4EB8 72B9  7B9C 32B0 B453 4209 170B
    uid                  ArchHaskell (Magnus Therning) <magnus@therning.org>
    sub   2048D/A418C0FE 2012-12-26

If you'd like to build the repository yourself, then you need to install the
following packages:

* `devtools`
* `cblrepo` (available in `[haskell-core]`, and from [hackage][6])
* `git`
* `docker`


Building it all
---------------

Please note that this will build *all* the packages in the repo, which probably is a waste of time for most people.  It's much easier to add the [ArchHaskell repo](https://wiki.archlinux.org/index.php/Haskell#ArchHaskell_repository) of pre-built packages.  There is also no need to build all packages in order to build a single one, please see the [documenation of cblrepo](https://github.com/magthe/cblrepo) for more details on how to add and update packages.

First note that you will need the following packages installed to proceed:

    % sudo pacman -S docker devtools arch-install-scripts reflector git

Then clone the database in this repository:

    % git clone git://github.com/archhaskell/habs.git
    % cd habs

Then update the cabal index:

    % cblrepo update

Then create all the PKGBUILDs for the packages:

    % cblrepo pkgbuild $(cblrepo build base|tail -n +2)

that should fill up the directory with directories containing PKGBUILDs, one for each package.  To build packages one first needs to create a docker image by using `helpers/mk-docker-image` (must be run as root):

    % sudo systemctl start docker
    % sudo ./helpers/mk-docker-image

then use the script `docker-build` to build all the packages:

    % ./docker-build -- $(cblrepo build base | tail -n +2)

Both scripts has some built-in help, to see it run the script with `-h`.

All PKGBUILDs in the project must be generated with the latest release of [cblrepo][6].

The ArchHaskell project
=======================

The main goal is to maintain a binary repository of up-to-date packages taken from [hackage][1].  To achieve this we also maintain several repositories of tools, libraries, and scripts:

* [cblrepo][6] is the main tool used to maintain a consistent database of package versions and generate PKGBUILDs.
* [cabal2arch][2] is a tool which converts a CABAL file into a PKGBUILD, and optionally a `.install`. (Currently only used for packages not included in the database, e.g. for generating source packages to upload to AUR.)
* [archlinux][3] is the main dependency of `cabal2arch`.
* [archlinux-web][4] contains a library and a set of scripts that help with various web-related tasks such as updating the information on [hackage][1] on what versions of packages that are available for ArchLinux.

All discussion around our HABS tree and other packages take place on the [ArchHaskell mailinglist][5].

The available packages
======================

Currently the repository contains some 200 packages, which is only a small fraction of the packages on [hackage][1].  We would of course like to cover 100% of [hackage][1], but our resources, tools and processes don't allow it yet.

Choosing of the current set
--------------------------

The current set of packages was chosen in a very unstructured way, and we are still discussing how to decide what packages we take on.  Please get involved by joining the [mailinglist][5] if you have opinions on how we should pick the packages we provide.

Adding individual packages
--------------------------

Suggestions for adding individual packages to the set are always welcome. Use the [github issue tracker][5] to make sure your request isn't lost.  Be aware though that each added package adds to the burden of the team, so there is a real risk that your request is denied.  That risk is reduced if you show an interest in contributing to the project, e.g. by providing already built packages together with your request..

Contributing
------------

1. Fork it.
2. (Maybe) Create a new branch.
3. Make the required changes. (Adding packages, patches etc.)
4. Build packages for **both** `i686` and `x86_64`.
5. Upload the built packages to someplace where the maintainers can get them. (e.g. Dropbox)
6. Push the changes to your fork.
7. Create a pull request mentioning the url from which the package can be downloaded.

[1]: http://hackage.haskell.org/packages/hackage.html
[2]: https://github.com/archhaskell/cabal2arch
[3]: https://github.com/archhaskell/archlinux
[4]: https://github.com/archhaskell/archlinux-web
[5]: https://github.com/archhaskell/habs/issues
[6]: http://hackage.haskell.org/package/cblrepo
