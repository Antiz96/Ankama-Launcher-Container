# Contributing

Thank you for considering contributing to the [Ankama Launcher Container](https://github.com/Antiz96/Ankama-Launcher-Container)!

With the exception of the [general rules](#general-rules) (which **must** be acknowledged and applied in any contribution / interaction in this project), these guidelines represent an ideal target & standards that I would like this project to follow but may not all be **strictly** enforced (depending on the situation).

Please, don't refrain yourself from contributing if you feel that your contribution may not entirely follow these guidelines (or if you're struggling applying some of them). I value your contributions much more than the strict application of these guidelines!

## Table of contents

- [General rules](#general-rules)
- [Open an issue](#open-an-issue)
- [Open a pull request](#open-a-pull-request)
- [Donations](#donations)
- [Thank you](#thank-you)

## General rules

These general rules apply to **every** contributions (whatever the type). They should **always** be acknowledged and **strictly** followed in any circumstances:

Basic common sense applies to every contributions & discussions: stay polite and respectful, no flaming / trolling / spamming or any kind of discrimination / harassment, avoid controversial topics *(specifically if it has nothing to do with this project whatsoever)*, etc...

Use English as much as possible for contributions & discussions. If required, I can also speak French, but it's important that contributions & discussions remain intelligible to most people.

## Open an issue

Before [opening an issue](https://github.com/Antiz96/Ankama-Launcher-Container/issues/new/choose), verify that there isn't one already open on the same (or a similar) subject.

Make sure to use the correct type for your issue (`Bug Report` or `Feature Request`) and to provide the requested information. If you have a doubt about which one is the most appropriate for your issue (or if you think that none of these types apply to your issue), feel free to use the general `Other` type.

Providing as much details as possible in your issue will ease its processing.

## Open a pull request

Read the following sub-chapters before opening a pull request.  
Make sure to create your merge request from a dedicated branch (do not use the `main` branch) and to provide the information requested in the [pull request template](https://github.com/Antiz96/antiz/blob/main/.github/PULL_REQUEST_TEMPLATE.md).

### Open an issue first

Apart from trivial changes (like simple typo fixes), it is advised to first [open an issue](#open-an-issue) to expose and discuss your changes, verify its feasibility / necessity and agree on the specifications.

### Coding style

When submitting code changes, try to respect the coding style and the overall way things work, as much as possible.

Bash code is checked with [shellcheck](https://www.shellcheck.net/).  
Markdown syntax is checked with [markdownlint](https://github.com/markdownlint/markdownlint).

### Commit message format

Commits must follow the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.

This project uses the following commit types:

- chore: for internal / miscellaneous changes
- feat: for new features (or improvements / additions to existing features)
- fix: for bug fixes
- doc: for documentation only changes
- style: For changes that do not affect the meaning of the code (white-space, formatting, typo fixes, etc...)

An optional scope can be provided to the commit type if relevant (for instance when a change is specific to a precise part of the project), like so: `type(scope): commit message`.

If a commit introduces a breaking change, its type must contain a `!` (e.g. `feat!: commit message`) and / or a `BREAKING CHANGE:` mention should be added at the end of your commit message (e.g. `BREAKING CHANGE: description of the breaking change`).

Here are a few examples of the expected commit format:

```text
feat(image): Update base image to base-20250118.0.299213

Update base image to base-20250118.0.299213 to address the rsync vulnerability fixes (which is pulled by distrobox).

Closes https://github.com/Antiz96/Ankama-Launcher-Container/issues/163
```

```text
fix: Add a web browser to the container image

The Ankama Launcher now expects to be able to open a web browser to allow you to log in to Ankama Services (it doesn't allow you to login directly from the launcher anymore).

Fixes https://github.com/Antiz96/Ankama-Launcher-Container/issues/103
```

```text
doc(man): Add documentation for the steamOS install script

The recently steamOS install script was missing from the documentation
```

```text
style: Typo fixes in README and man page
```

### License

By contributing to this project, you agree that your contributions will be licensed under the [GPL-3.0 license](https://github.com/Antiz96/Ankama-Launcher-Container/blob/main/LICENSE) (or any later version of this license).

## Donations

You can also support this project development (and my work in general) by making a donation via my [GitHub sponsor page](https://github.com/sponsors/Antiz96).

## Thank you

Once again, thank you for considering contributing to the Ankama Launcher Container!  
I'd also like to sincerely thank everyone that gave the Ankama Launcher Container a star, opened issues, feature requests, pull requests or contributed to this project in any other way! :heart:
