# Prompt:

99 bottles of beer on the wall. 99 bottles of beer. Take one down, pass it around, 98 bottles of beer on the wall.
98 bottles of beer on the wall. 98 bottles of beer. Take one down, pass it around, 97 bottles of beer on the wall.

.....

2 bottles of beer on the wall. 2 bottles of beer. Take one down, pass it around, 1 bottle of beer on the wall.
1 bottle of beer on the wall. 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.

## Goal:

Output an array that has each phrase of the song

- Number of bottles decrements
- Final array should have 100 elements in it, with the last element having "No more bottles of beer on the wall…"
- **Special emphasis** on using the string 'No more bottles…' instead of the integer value of beer bottle quantity.

## Installation:

Run `bundle` from command line to make sure that you have rspec for the tests.

## Run tests:

`bundle exec rspec`
