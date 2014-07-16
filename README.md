OpenOffice-Chords
=================

Transpose chordnames in OpenOffice/LibreOffice text documents

Usage
-----

This extension adds a new menu `Chords`

   * `Chords/Transpose...`
   * `Chords/Find all chords in document`
   * `Chords/Find all chords in selection`

A chord is specified in the text in the usual way, *surrounded by square brackets*.

For example: `[A]` `[Cdim]` `[Bb7]` `[G#m]`


Installation
------------

   * Download `Chords-X.Y.Z.oxt`
   * `Tools->Extension Manager...->Add`


Hacking
-------

Packaged using BasicAddonBuilder

   * https://wiki.openoffice.org/wiki/Extensions_Packager
   * http://extensions.services.openoffice.org/project/BasicAddonBuilder

Hack away at the macros & dialog boxes

   * `Tools->Macros->Organise Macros->LibreOffice Basic`
   * `Tools->Macros->Organise Dialogs...`

Run `BasicAddonBuilder` (own toolbar)

   * Select library to deploy
      - `Chords`
   * General options
      - `Add top level menu`
   * Office menubar
      - Menu title: `Chords`
      - Add menu `Transpose...`
         - `UserMacros/transposeChords`
      - Add menu `Find all chords in document`
         - `UserMacros/findAllChordsInDocument`
      - Add menu `Find all chords in selection`
         - `UserMacros/findAllChordsInSelection`
   *  License and version
      - Unique identifier:  `vnd.basicaddonbuilder.chords`
      - Version number: *increment*
      - License: Public Domain (UNLICENSE)
   * Extension description
   * Publish


See Also
--------

http://ooolilypond.sourceforge.net/

Also provided: `UkuleleFretBoard.ly` template for OOoLilyPond.
