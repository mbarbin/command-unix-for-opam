(lang dune 3.16)

(name command-unix-for-opam)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin")

(source
 (github mbarbin/command-unix-for-opam))

(documentation "https://mbarbin.github.io/command-unix-for-opam/")

(package
 (name command-unix-for-opam)
 (synopsis "Improve Core Commands distributed with opam")
 (depends
  (ocaml
   (>= 5.2))
  (base
   (and
    (>= v0.17)
    (< v0.18)))
  (core
   (and
    (>= v0.17)
    (< v0.18)))
  (core_unix
   (and
    (>= v0.17)
    (< v0.18)))
  (dune-build-info
   (>= 3.16))
  (ppx_sexp_value
   (and
    (>= v0.17)
    (< v0.18)))
  (ppxlib
   (>= 0.33))))
