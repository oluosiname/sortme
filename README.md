[![Code Climate](https://codeclimate.com/github/andela-oosiname/sortme/badges/gpa.svg)](https://codeclimate.com/github/andela-oosiname/sortme) [![Build Status](https://travis-ci.org/andela-oosiname/sortme.svg?branch=master)](https://travis-ci.org/andela-oosiname/sortme)


# Sort Me

Sortme is a ruby application that helps you organize your media files by moving them from their current location to the appropriate media folder.

At the initial run, user sets up his path of preference for video, audio and picture files.

## Installation

The User should have ruby set on his pc

The app is installed as a gem by running:

    $ gem install sortme

## Usage

After installation

Navigate via commandline to the folder you wish to sort your media files from and type `sortme`.

At first run, user has the option to use system default paths or custom paths

- To use default paths enter "y" at the prompt
- To use custom paths enter "n" and proceed to set up your media paths like so

`/Users/USER/movies`

`/Users/USER/music`

`/Users/USER/pictures`

Note: This is just an example path. If you are not familiar with file paths, hit y and press enter to use default paths for your system

The files are then moved to the set folders according to their media type.

You do not need to set paths on subsequent calls of `sortme` as the default paths will be saved in a .json file.

## Changing Paths

### Advanced

To edit your default paths, navigate to your home and locate `sortme_settings.json` and edit..

### Others

- Go to your home directory and delete the `sortme_settings.json` file.
- Run sortme again
- do not edit if you are not familiar with json file format

## Contributing

1. Fork it ( https://github.com/andela-oosiname/filtersort/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Note: I might not be immediately available to respond to pull requests as I am mostly busy..

