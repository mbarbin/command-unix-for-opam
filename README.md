# command-unix-for-opam

[![CI Status](https://github.com/mbarbin/command-unix-for-opam/workflows/ci/badge.svg)](https://github.com/mbarbin/command-unix-for-opam/actions/workflows/ci.yml)

## Motivations

This util library is meant to improve compatibility of core commands meant to be
distributed with the opam package manager.

In particular, if a command is simply run with `Command_unix.run`, it ends up in
the distribution with no special support for options `-version` and `version`:

```sh
$ cmd version
((build_time(1970-01-01 01:00:00.000000+01:00))(x_library_inlining false)(portable_int63 true)(dynlinkable_code false)(ocaml_version"")(executable_path"")(build_system""))
NO_VERSION_UTIL

$ cmd -version
NO_VERSION_UTIL
```

This library is meant to improve this, by joining the dots between
`Command_unix`'s `version` and `dune-build-info`, so that `version` refers to
the version of the package distribution, for example:

```sh
$ opam install my-core-cmd.2.1.3
$ my-core-cmd -version
2.1.3
```

### Down the road?

Since `dune-build-info` and `core_unix.command_unix` are both maintained by Jane
Street Group, it is possible an integration of this kind will take place
directly in `core_unix.command_unix` at a later point, making this library
obsolete. TBD.

## Usage

The current usage is to add a dependency to `command-unix-for-opam` in the bin's
`dune` file, and simply replace `Command_unix.run` by
`Command_unix_for_opam.run` in your `main.ml`.

```diff
- let () = Command_unix.run My_core_cmd.command
+ let () = Command_unix_for_opam.run My_core_cmd.command
```

## Code documentation

The code documentation of the latest release is built with `odoc` and published
to `GitHub` pages [here](https://mbarbin.github.io/command-unix-for-opam).
