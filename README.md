# Carpetbomb

**Markdown and erb template handler for Ruby on Rails using [Redcarpet](https://github.com/vmg/redcarpet).**

## Dependencies

It depends on Redcarpet v3.0.0.

### Rails versions.

As for the moment I've only tested this gem in Rails 4.0.0, and it works. I
think it will also work in Rails 3.2.x with no problem. If you are using an
older version of Rails and it doesn't work create an issue or submit a pull
request I'll be happy to help.

## Installation

Add to your project Gemfile:
~~~sh
$ gem 'carpetbomb'
~~~

Run the following command to install it:
~~~sh
$ bundle install
~~~

Run the generator:
~~~sh
$ rails generate carpetbomb:install
~~~

That's it.

## Uninstall

Run the generator:
~~~sh
$ rails generate carpetbomb:uninstall
~~~

Remove the gem from the Gemfile, and run bundle.

## Usage

This gem adds three posible markdown template extensions to the existing Rails
template handlers:

`.md`, `.mdown` and `.markdown` all of them will work and will be parsed first
with Ruby on Rails erb template, so you can add whatever erb syntax you want.
After that it will be parsed by Redcarpet to handle the markdown part.

It's really simple to start using markdown templates. Create a view or rename it
to whatever viewname you want `{viewname}.html.md` and that's it.

***index.html.md***
~~~erb
<%= content_for :page_title, 'MyApp - Index' %>

# Hi from the index page.

This is the home directory!
~~~

## Configuration

The configuration file for this gem in installed when you use the `rails generate carpetbomb:install`
command, and it's located in `config/initializers/carpetbomb.rb`. You can
change any Redcarpet options within that file.

You can check those options [here](https://github.com/vmg/redcarpet).

## Contributions

Just send a pull request!

## Thanks

Thanks to Lindsey Bieda for [this
tutorial](http://rarlindseysmash.com/posts/how-to-gem-like-jem) and to Joliss
for her [markdown-rails](https://github.com/joliss/markdown-rails) I practically
copied the core of gem.
