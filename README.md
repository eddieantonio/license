# license

Places a LICENSE in the current directory.

## Usage

```sh
$ license apache-2.0 
```

or 

```sh
$ license mit 2015 FooBar Inc.
```

See also `man license`.

## Recommended Usage

Set the environment variable `LICENSE_OWNER` with your name in your
shell's start-up script (i.e., `~/.bashrc` or `~/.zshrc` or what-have-you):

```sh
export LICENSE_OWNER='Insert your name here!'
```

And in every new shell thereafter:

```sh
$ license isc
```

The LICENSE file will automatically replace the year and name with the
current year and `LICENSE_OWNER`, respectively.

The full list of licenses can be found [here][liclist].

[liclist]: https://github.com/github/choosealicense.com/tree/gh-pages/_licenses

## Quick Install

On OS X:

```sh
brew tap eddieantonio/eddieantonio && brew install license
```

On everything else:

```sh
curl -L https://github.com/eddieantonio/license/archive/master.tar.gz | tar xz && cd license-master/ && make install && cd .. && rm -rf license-master
```

License
=======

This project is, ironically enough, dedicated to the public domain. For
details, see <http://unlicense.org/>.

Originally written by Eddie Antonio Santos <http://eddieantonio.ca>.
