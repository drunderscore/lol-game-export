# lol-game-export
An export of League of Legends scripts.

## What is this?
In League, lua scripts are used to control most aspects of the game. All gamemodes, champions, spells, buffs, items, ai, map features and more are controlled all by these scripts. They use systems like events, components, mutators, and so-called "building blocks" that are pre-generated from an editor.

This repository is not automatically updated, it is done manually.

## How?
I use [Obsidian](https://github.com/Crauzer/Obsidian) to export `.wad` files (specifically, `Scripts.wad.client`).

I use [unluac](https://sourceforge.net/projects/unluac/) to decompile to lua.

I use `league_scripts.py` to do it all for me. Run it in the directory with all the compiled lua files, or pass the path to the binary descriptor file to output a human-readable one (descriptor.txt).

## How should I view changes?
Don't use Github's diffing feature. This repo is too large, so you can't diff the commits correctly (and Github doesn't allow individual file diffing). Github also attemps to follow file renames, but does a very bad job of it.

Please, clone this locally, checkout the commits individually, and use [WinMerge](http://winmerge.org/), or your favorite diffing program for your operating system.