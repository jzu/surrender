# surrender

Pulls a markup text along with associated repository contents, renders it, and pushes the result to the repository.

The local repo should have been initialized first (`git clone`).

You should copy the `surrender` and `includes.sh` files in your directory, give the name of the source (`SRC_FILE`) and rendered (`DST_FILE`) documents as well as the `COMMAND` doing the rendering in `includes.sh`, which will be read by the `surrender` script. 

The script should be cronable, but relies on ssh keys so you need either no passphrase or a properly configured ssh-agent environment.

This project originated from the need to automatically render the [french translation of Gavin Wood's Yellow Paper](https://github.com/asseth/yellowpaper/tree/french) for non-TeXnicians.

Example taken from `/usr/share/doc/texlive-doc/latex/lcd/example.tex.gz`.


