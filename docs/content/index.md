# Introduction

Ciri provides a flake with home manager options to configure the
[niri compositor](https://github.com/niri-wm/niri). Allowing you to configure
niri in nix directly.

## Goals

The main motivation for this project is to automatically generate nix
configuration options from the niri source code, removing the need to implement
and review every change to the niri configuration options manually.

Ciri aims to:

- automatically detect changes to the niri configuration options and generate
  nix options directly from the upstream repo
- quickly deliver updates for the nix options (see the
  [type updates](#type-updates) section)
- mirror the upstream options and configuration structure as closely as possible
- provide an intuitive and easy configuration experience

## Type updates

The nix types are generated at
[types.nix](https://github.com/myume/ciri/blob/main/generated/types.nix) by a
rust script. Currently, updates to the niri configuration are polled once a week
by this
[github action](https://github.com/myume/ciri/actions/workflows/types.yml). This
means that the options should never be more than a week out of date. The
frequency of these checks is up for discussion. The rationale for the current
choice is that the niri configration options are not updated that frequently, so
polling for updates any quicker will just be wasting compute. The job can be
triggered manually, so if you desperately need the updates feel free to create
an issue.

The options on the main branch currently targets the main branch of niri. Ciri
is capable of targetting stable releases as well, but there are some
[known limitations](#known-limitations) that make this suboptimal for now.

## Known limitations

The ciri flake needs to convert the nix configuration options to the niri KDL
configuration. The nix to KDL translation is on a best effort basis, we try to
provide reasonable defaults, but for more complex KDL structures it becomes
harder to handle. There are bound to be edge cases that aren't handled since Nix
attrsets doesn't map to KDL nicely.

In general, options with primitive types such as bool, int, or str will probably
be handled correctly, but there are bound to be some unhandled edge cases. If
you encounter any issues with the generated KDL feel free to
[file an issue](https://github.com/myume/ciri/issues/new?template=kdl-config-generation-malformed.md)
or open a PR to fix it.
