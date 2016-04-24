# Colorizr

A simple ruby gem for colorizing terminal output.

## Installation and usage
To install colorizr simply clone this repository and install the gem:
```
$ git clone https://github.com/spavikevik/colorizr.git
$ cd colorizr
$ gem install colorizr
```

It is necessary to write `require 'colorizr'` at the top of your main ruby file in order to load the required methods for colorizing your output.

The usage is simple:
```
puts [string].[color_name]
```
where [string] is the string object you want to colorize and [color_name] is the color you want to apply to your string.

-------------------------------------------------------------

You can list all the available colors using
```
puts String.colors
```

And you can use `String.sample_colors` to see an example of how the colors look like when applied to a sample string.

### Example usage
```
str = "Hello world!"
puts str.blue
```

## License
Colorizr is licensed under the MIT license.
