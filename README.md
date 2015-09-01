# etnbrd's dotfiles

Highly inspired by [@Holman does dotfiles](https://github.com/holman/dotfiles).
Uses [Prezto](https://github.com/etnbrd/prezto) and [SCM_Breeze](https://github.com/etnbrd/scm_breeze)

## dotfiles

Your dotfiles are how you personalize your system. These are mine.
I have several machines, and I want to keep the same dotfiles repository everywhere.
I created a tagging system to filter out some dotfiles on some machines, while keeping most dotfiles commons.

## install

```sh
git clone --recursive https://github.com/etnbrd/dotfiles.git ~/.dotfiles
cp .dotfiles/.localrc ~
vim ~/.localrc
bin/bootstrap
```


`.localrc` contains the different tags you want to apply on your current machine.

`bin/bootstrap` will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## tags

Topics can be common for all your architecture, or can be specified by tags.
If you want to have an arch-linux specific topic, you can specify it in the name of the topic : `system[arch]`
In `.localrc` you can then specify which tags to load.
Tags are comma separated.
As an example a topic like `system[arch,dev]` would match the tags `TAGS=ubuntu,dev`, because of the tag dev.

## topics

Everything is built around topic areas.
A topic is a directory.
If you're adding a new area to your dotfiles — say, "Java" — you can simply add a `java` directory and put files in there.

- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

### The bin topic

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## todos

+ Rename tags into something more meaningful : characteristics, traits ...
+ Remove SCM, and use the default prezto git plugin
+ Create a private submodule containing all the credentials and other sensitive informations

## thanks

Thanks to [@holman](https://github.com/holman) from who I forked the [dotfiles](https://github.com/holman/dotfiles), and then deleted everything, except the excellent structure :)

