OpenOffice-Chords
=================

Transpose chordnames in OpenOffice/LibreOffice text documents


Installation
------------

   * Download `Chords-X.Y.Z.oxt`
   * `Tools->Extension Manager...->Add`


Usage
-----

This extension adds a new menu `Chords`

   * `Chords/Transpose...`
   * `Chords/Find all chords in document`
   * `Chords/Find all chords in selection`

A chord is specified in the text in the usual way, *surrounded by square brackets*.

For example: `[A]` `[Cdim]` `[Bb7]` `[G#m]`


Hacking
-------

Packaged using BasicAddonBuilder

   * https://wiki.openoffice.org/wiki/Extensions_Packager
   * http://extensions.services.openoffice.org/project/BasicAddonBuilder

Hack away at the macros & dialog boxes

   * `Tools->Macros->Organise Macros->LibreOffice Basic`
   * `Tools->Macros->Organise Dialogs...`

Run `BasicAddonBuilder`

   * Select library to deploy
      - `Chords`
   * General options
      - `Add top level menu`
   * Office menubar
      - Menu title: `Chords`
      - Add menu ... create menu items for each macro in `UserMacros`.  Only required in Writer context
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
