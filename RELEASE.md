# Creating a release

- Make sure that `git-cliff` is installed.

- Export a `TAG` variable containing the new tag for the release:

```bash
export TAG="X.Y.Z"
```

- Update changelog:

```bash
git-cliff -up CHANGELOG.md
sed -i "s|\[unreleased\]|\[v${TAG}\](https://github.com/Antiz96/Ankama-Launcher-Container/releases/tag/v${TAG})\ -\ $(date '+%Y-%m-%d')|g" CHANGELOG.md
```

- Commit, sign and push changes directly to the **main branch** *(we want the tagged commit to be signed with the [OpenPGP Key](https://keyserver.ubuntu.com/pks/lookup?search=D33FAA16B937F3B2&fingerprint=on&op=index) listed in [MAINTAINERS.md](https://github.com/Antiz96/Ankama-Launcher-Container/blob/main/MAINTAINERS.md) and not with the GitHub signature key automatically used when merging a pull request; this implies **temporarily** allowing administrators to bypass branch protections rules)*:

```bash
git add .
git commit -SD33FAA16B937F3B2 -m "chore(release): v${TAG}"
git push
```

- Create, sign and push the new tag:

```bash
git tag v${TAG} -u D33FAA16B937F3B2 -m "v${TAG}"
git push origin v${TAG}
```

- Create a release on GitHub, download and sign the auto-generated source tarball:

```bash
cd ~/Downloads
gpg --local-user D33FAA16B937F3B2 --armor --detach-sign Ankama-Launcher-Container-${TAG}.tar.gz
sha256sum Ankama-Launcher-Container-${TAG}.tar.gz > Ankama-Launcher-Container-${TAG}.tar.gz.sha256
gpg --local-user D33FAA16B937F3B2 --armor --detach-sign Ankama-Launcher-Container-${TAG}.tar.gz.sha256
rm -f Ankama-Launcher-Container-${TAG}.tar.gz
```

- Upload the 3 produced files as assets in the release, re-enable the branch protection rules on the main branch for administrators and unset the `TAG` variable:

```bash
unset TAG
```
