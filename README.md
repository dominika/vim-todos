# todos

Simple syntax highlighting & rotating of todo lists.
Personally I use this in pair with Notational Velocity.

## Installation

Copy to ~/.vim/bundle

## Usage

Active in all files that have `todo` in their name.

### Default state list
    g:TODOStates=['-','*','+']

### Default rotation mappings

Active on a line with a character from our states list.
    `=` upward rotation
    `-` downward rotation
