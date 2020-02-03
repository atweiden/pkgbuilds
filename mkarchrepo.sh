#!/bin/bash
git clone https://github.com/atweiden/pkgbuilds --depth 1
cd pkgbuilds
pushd moarvm && makepkg -Acsi --noconfirm && popd
pushd nqp && makepkg -Acsi --noconfirm && popd
pushd rakudo && makepkg -Acsi --noconfirm && popd
mkdir -p "$HOME/raku"
find . -type f -name "*.pkg.*" -exec cp '{}' "$HOME/raku" \;
repo-add raku.db.tar.gz "$HOME/raku"/*
mv raku.* "$HOME/raku"
