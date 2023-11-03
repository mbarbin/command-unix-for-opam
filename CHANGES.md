## 0.0.1 (2023-11-03)

Initial release.

- Make [-version] outputs the package version returned by `dune-build-info`
- Make [build-info] outputs the rest of the info returned by `dune-build-info`,
  currently that is all the libraries that where statically linked in.
