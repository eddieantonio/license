% LICENSE(1) | license User Manual

NAME
====

**license** — place a license in the current directory

SYNOPSIS
========

| **license** _license_ \[_YEAR_ \[_FULL NAME..._]]

DESCRIPTION
===========

`license` places a file called `LICENSE` in the current working
directory, when given the name of an open source license, as listed by
GitHub's <http://choosealicense.com/>. Choose a license such as `mit`,
`apache-2.0` or `gpl-3.0` and it will magically appear in the current
working directory, with the current year and your name (see below).

| See the full list of available licenses here (omit the `.txt`):
|
|    <https://github.com/github/choosealicense.com/tree/gh-pages/_licenses>

If not specified on the command line (as the second argument), the
current year will be as the copyright year.

If not specified on the command line (as the third argument and
onwards), the license owner will either be set to the environment
variable `LICENSE_OWNER` if set, or the logged-in user's name.

It is recommended to place this line in your shell's start-up script
(e.g., `~/.bashrc`, `~/.zshrc`, etc.):

    export LICENSE_OWNER="Insert your name here"

ENVIRONMENT
===========

`LICENSE_OWNER`

:  The default license owner name (if not specified on the command line).

BUGS
====

See GitHub Issues: <https://github.com/eddieantonio/license/issues>

LICENSE
=======

This script is, ironically enough, dedicated to the public domain. For
details, see <http://unlicense.org/>.

Originally written by Eddie Antonio Santos <http://eddieantonio.ca>.
