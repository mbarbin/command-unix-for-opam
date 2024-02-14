(lang dune 3.14)

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
   (>= 5.1))
  (base
   (and
    (>= v0.16)
    (< v0.17)))
  (core
   (and
    (>= v0.16)
    (< v0.17)))
  (core_unix
   (and
    (>= v0.16)
    (< v0.17)))
  (dune-build-info
   (>= 3.14))
  (ppx_sexp_value
   (and
    (>= v0.16)
    (< v0.17)))))
