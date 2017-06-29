FROM base/archlinux
MAINTAINER Magnus Therning <magnus@therning.org>

COPY pacman.conf /etc

RUN   true \
    && mkdir /repo \
    && touch /repo/repo.db \
    && pacman -Sy --noconfirm \
          base-devel \
          ghc \
          sudo \
    && useradd --no-create-home --home-dir / -g users -G wheel -s /bin/bash habs \
    && true

COPY sudoers /etc
