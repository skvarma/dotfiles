# Tim’s dotfiles

## What Is This Stuff?

This repo is my way of setting up & maintaining a Mac computer.  It contains most of my preferences and can automatically install my apps as well.  Dig in, learn, and copy freely but please be careful - using this repo without reviewing it first can really mess up your computer.

## How Do I Use It?

(I'm aware that I can automate most of this.  I like the modular nature so I can re-run portions of this repo without touching the whole thing.  And https://xkcd.com/1205/)

1. Install Xcode from the App Store (launch the app & accept the license agreement)
2. Install macOS Command Line Tools by running `xcode-select --install`
3. Clone this repo somewhere on your computer.  I use `~/Projects/dotfiles` so it's with the rest of my work
4. Install apps using homebrew:

  ```bash
  ./install.sh
  ```

5. Create a `.extra` file to include changes you'd like that aren't included in this repo.  Usually includes things like name & email for Git.  My `.extra` file includes this:

  ```bash
  # Git credentials
  # Not in the repository for obvious reasons
  GIT_AUTHOR_NAME="Name"
  GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
  git config --global user.name "$GIT_AUTHOR_NAME"
  GIT_AUTHOR_EMAIL="name@email.com"
  GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
  git config --global user.email "$GIT_AUTHOR_EMAIL"
  ```

6. Get your dotfiles in place:

  ```bash
  source bootstrap.sh
  ```

7. Customize macOS:

  ```bash
  ./.macos
  ```

8. Restart your computer (not necessary for most of the changes, but there are 1 or 2 things that'll run smoother if you do restart)

Start writing more code!

## TODO

- [X] include custom bash prompt, aliases, editorconfig, git, etc
- [X] pull together a set of install scripts & instructions
- [X] update this README
- [ ] include my Atom config (see nicksp's work)
- [ ] make install & sourcing a little safer (see nicksp's setup.sh for inspiration)
- [ ] customize zsh prompt (see nicksp's theme)

## Thanks To...

I borrowed quite a bit from some giants in the dotfiles realm:

* Github's [dotfiles page](https://dotfiles.github.io/) is an awesome place to start
* Dries Vints' [blog post](https://driesvints.com/blog/getting-started-with-dotfiles) and [repo](https://github.com/driesvints/dotfiles)
* Lars Kappert's post on [getting started with dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.w1ogcsuu2)
* Mathias Bynens' [renowned dotfile repo & macOS defaults](https://github.com/mathiasbynens/dotfiles/)
* Nick Plekhanov's [dotfile repo](https://github.com/nicksp/dotfiles)

## License

Licensed under the MIT License. Please see [the license file](LICENSE.txt) for more information.
