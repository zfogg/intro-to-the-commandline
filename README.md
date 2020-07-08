# Intro to the Command Line

## Workshop Details

-   Workshop Link http://steamcamproom0.hacker.fund/
-   Link for students who want to follow along: https://repl.it/@zfogg/intro-to-the-commandline
-   Times:
    -   11:30 - 12:30 PDT
    -   14:30 - 15:30 EDT

Unfortunately we won't have admin access on an online REPL :( and, it would be too messy to have everyone playing in the same REPL.

So I will do a lot of this through screenshare, and students can follow along if they like!

Use the link above^ to do that :)

Ask questions in the chat if you need to!

Further resources:

-   Installing Linux on a Chromebook
    -   https://support.google.com/chromebook/answer/9145439?hl=en
-   https://www.youtube.com/watch?v=4RPtJ9UyHS0&t=31s
-   https://www.youtube.com/watch?v=oxuRxtrO2Ag

## Workshop Outline

Timline: 55mins

### CLI History

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

05 mins

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
-   Read through and explain the scripts i wrote in `./scripts`
    -   Use them with the skills we just learned
-   If we have time (screenshare):
    -   Expansion
    -   !!, !!2, !!\$
    -   `for f in *.txt; do cp "$f" "${f:r}.text"; done`
    -   telnet towel.blinkenlights.nl

### Q & A, Project Ideas

10 mins

-   What can you do with these skills?
-   How do most people work?
-   What other type of CLI
