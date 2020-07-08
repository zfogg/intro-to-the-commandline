# Intro to the Command Line

## Outline

Timline: 55mins

Unfortunately we won't have sudo access on an online REPL :(

It's also going to be a mess to have everyone playing in the same REPL.

So I will do a lot of this through screenshare, and have kids follow along!

### History

10 mins

-   REPLs
-   teletype, typewriters
-   CLI HCIs
-   Terminals and shells

### Standard commands

10 mins

-   UNIX, Linux, bash
-   echo, cat, ls, rm, cp, mv, mkdir, touch
-   REPL controls
    -   history: up, down
    -   history: search Ctrl-R
    -   Ctrl-C
-   Commands and arguments
    -   `--help, -h`
    -   man
    -   curl, wget
    -   ping, telnet

### Basic usage

10 mins

-   Working directory
-   Moving around the filesystem
-   Making directories and files

### Variables

10 mins

-   PATH, PWD, HOME, USER
-   local variables
-   set, unset, export

### Bash REPL coolness

10 mins

-   return codes
    -   `[ -d "$HOME" ] && echo "my home is $HOME" || echo " I have no home :("`
    -   true, false
    -   \$?
-   Piping and redirecting
    -   `cat file.txt | less`
    -   `more < file.txt`
-   Expansion
    -   !!, !!2, !!\$
    -   `for f in *.txt; do cp "$f" "${f:r}.text"; done`
-   If we have time (screenshare):
    -   telnet towel.blinkenlights.nl
