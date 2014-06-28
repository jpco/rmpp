# RMPP

It's safer than GNU rm, becuase GNU rm isn't safe.

### Components:
 - `rmpp`: rather than truly removing the file(s) to be rm'd, moves them to the special directory `~/.trash/`, indexed and such in a certain way.
 - `rmdirpp`: removes empty directories the rmpp way.
 - `unrm`: Brings back either a specific file (by specifying `unrm [FILE]`) or the last thing removed (by specifying `unrm --last`).
 - `lstrash`: lets you see the deleted items currently in the trash.
 - `emptytrash`: empties the `~/.trash/` folder and clears the trash register. Note that this deletion is permanent.

Use `[command] --help` for a few more details.

This package includes a blacklist--files that rmpp won't remove unless you SPECIFICALLY TELL IT to throw caution to the wind with "--no-blacklist". There is a global blacklist specified at `/etc/rmpp.conf`, and a user-specific one specified at `~/.config/rmpp.conf`, though just look at the source and see you can change that folder to something different.

### RECOMMENDED INSTALLATION:

Start in the folder you want your scripts to live in (mine is `~/.scripts/rmpp/`), and enter (as root or using sudo):
```
# ln -s $(pwd)/rmpp /bin/rmpp
# ln -s $(pwd)/unrm /bin/unrm
# ln -s $(pwd)/emptytrash /bin/emptytrash
# mv rmpp.conf /etc/rmpp.conf
```
Then in your `~/.bashrc` just add `alias rm='rmpp'`.

After this, you can specify GNU rm with `/bin/rm`.

###DISCLAIMERS:
 - I'm not responsible for your stuff!!!
 - It can be confusing to have two 'remove' behaviors, and that confusion lead you even further astray than default `/bin/rm` would have anyway. Some in-program deletion commands (like in Emacs, maybe?) may still permanently delete files...
 - This software is INCOMPLETELY TESTED and therefore may/will be BUGGY. You might kill some files you didn't mean to. (Though I'm almost certain you won't mess up files you don't rm.) (Still, be careful with filenames like `*`.)
 - Note the global blacklist is very incomplete, so whatever you may consider "important" might not be covered on it.
 - This package doesn't support files with "\n" in their names. I don't particularly care about that, though.

###BUGS:
 - Currently doesn't behave right with the filename `*`

###TO-DO:
 - Add to the blacklist.
 - Properly define/implement behavior for name-conflicts which can arise with unrm.

Contact at mail@jpconger.com :)
