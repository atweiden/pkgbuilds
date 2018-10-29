#!/bin/bash
git clone https://github.com/atweiden/pkgbuilds --depth 1
cd pkgbuilds
pushd moarvm && makepkg -Acsi --noconfirm && popd
pushd nqp && makepkg -Acsi --noconfirm && popd
pushd rakudo && makepkg -Acsi --noconfirm && popd
mkdir -p "$HOME/perl6"
find . -type f -name "*.pkg.*" -exec cp '{}' "$HOME/perl6" \;
repo-add perl6.db.tar.gz "$HOME/perl6"/*
mv perl6.* "$HOME/perl6"
