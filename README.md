# dotfiles

Setup scripts for my Fedora i3 config.

## Usage

Clone the repository, then

```sh
./setup.sh
```

This will delete your existing configurations, and symlink them with those included in this repository.
It will also install any necessary packages with dnf.

Finally, add `i3-agenda-credentials.json` to `configs/i3` if you want to use i3-agenda for Google Calendar.
