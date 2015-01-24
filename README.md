# Ruzzle Bobble
================

This is a version of Bust-a-move written in Ruby Processing.

To use, you need to install some dependencies. Follow [this guide](https://github.com/jashkenas/ruby-processing/wiki/Installing-ruby-processing-on-the-mac), or these steps:


## Installation

Make sure you have homebrew, wget, java, and rvm, rbenv or chruby
installed. Then, install the following:

### Processing

Download from the website and install.

https://www.processing.org/download/

When you're done, make sure that the resulting app is located in
`/Applications`.

#### JRuby

`rbenv install jruby-1.7.18`

`rbenv global jruby-1.7.18`

#### Ruby Processing

`gem install ruby-processing`

#### JRuby Complete

`gem install jruby-complete`

`rp5 setup install`

`rp5 setup check` to make sure everything worked

#### Setup Processing Root

`echo 'PROCESSING_ROOT: /Applications/Processing.app/Contents/Java' >> ~/.rp5rc`

## Running the Game

`cd lib && rp5 ruzzle-bobble.rb`

