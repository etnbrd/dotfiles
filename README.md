# etnbrd's dotfiles

Highly inspired by [@Holman does dotfiles](https://github.com/holman/dotfiles).
Uses [Prezto](https://github.com/etnbrd/prezto) and [SCM_Breeze](https://github.com/etnbrd/scm_breeze)

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

## install

Run this:

```sh
git clone https://github.com/etnbrd/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
vim .localrc
cp .localrc ~
bin/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## tags

Topics can be common for all your architecture, or can be specified by tags.
If you want to have an arch-linux specific topic, you can specify it in the name of the topic : `system[arch]`
In `zshrc` you can then specify which tags to load (for the moment, only one tag can be loaded, and only one tag can be specified by topic).

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

## thanks

Thanks to [@holman](https://github.com/holman) from who I forked the [dotfiles](https://github.com/holman/dotfiles), and then deleted everything, except the excellent structure :)

