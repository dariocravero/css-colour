# CssColour

[![Build status](https://travis-ci.org/dariocravero/css-colour.svg)](https://travis-ci.org/dariocravero/css-colour)

Ruby CSS Colour validator.

It will tell if a colour is either:

* inherit,
* HEX `#123` or `#123123`,
* HSL,
* HSLA,
* RGB or
* RGBA

A couple of guidelines were used here:

* [MDN's docs](https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started/Color),
* [this Ruby HEX validator](https://gist.github.com/liquid/1324384) and
* [these Java regexes for HSL/RGB/RGBA were adapted to Ruby and made more readable](http://stackoverflow.com/a/12457269/1562732).

## Installation

Add this line to your application's Gemfile:

```
gem 'css-colour'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install css-colour
```

## Usage

```
validator = CssColour::Validator.new 'inherit'
validator.valid? # true
```

You can also test against a specific colour type as follows:

```
validator = CssColour::Validator.new '#123456'
validator.rgb? # false
```

## TODO

* Try to fix a colour.

## Contributing

1. Fork it ( http://github.com/dariocravero/css-colour/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
