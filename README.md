# stealth resource pack

My oCd-inspired resource pack, designed to be non-intrusive, simplistic,
and symmetric.


## Download

File server coming soon! In the meantime, if you want to try the resource pack
and provide feedback, you can download [`artifacts.zip`][artifacts], and
install the _inner_ zip file.


## Build

**Build Dependencies:**

- [xcftools][xcftools]
- perl

A `makefile` is provided in the repository root, with the following targets:

- `make build` - Builds the output PNG files from the source files.
- `make package` - Packages the output and meta files in `stealth.zip`
- `make clean` - Removes all generated output files.


## License

Copyleft (C) 2018 Adam Gausmann

This is a free work, you can copy, distribute, and modify it
under the terms of the Free Art License
http://artlibre.org/licence/lal/en/


[artifacts]: https://gitlab.com/AGausmann/stealth-resource-pack/-/jobs/artifacts/master/download?job=package
[xcftools]: https://github.com/j-jorge/xcftools
