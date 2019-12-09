Creating a Release
==================

Workaround for GitHub disallowing symlink upload as "duplicate file"
--------------------------------------------------------------------

on local machine:

```sh
cd pkgbuilds
# refresh tags
git fetch -va
# list tags
git tag --list
# delete tag on local repo
git tag -d latest
# delete tag on remote repo
git push origin :refs/tags/latest
```
