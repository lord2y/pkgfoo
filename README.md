# README

The aim of this project is to demonstrate how to use `git` to apply [Semantic Versioning](https://semver.org/).  
Just a quick summary:

> Given a version number MAJOR.MINOR.PATCH, increment the:
>
>    MAJOR version when you make incompatible API changes,
>    MINOR version when you add functionality in a backwards-compatible manner, and
>    PATCH version when you make backwards-compatible bug fixes.
>
> Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

For this project we consider to have a `tag` 1.0.0 which defines our first MAJOR version of our software.  
When we build a package, either deb or rpm, with `fpm` if we haven't done any other changes will get a package with this name:

     pkgfoo_1.0.0_amd64.deb    

From this point onward any other changes will generate packages with this name:

    pkgfoo_1.0.0-1-g6e2849a_amd64.deb

where `1.0.0` identify the version, `1` identify the number of commit done after the tag and `g6e2849a` identify the last commit hash.

## How to use this

You can clone the following repo and run

    make deb
