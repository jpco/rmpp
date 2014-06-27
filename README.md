RMPP

It's safer than GNU rm, becuase GNU rm isn't safe.

Components:
 - "rmpp": rather than truly removing the file(s) to be rm'd, moves them to the special directory ~/.trash/, indexed and such in a certain way.
 - "rmdirpp": removes empty directories the rmpp way.
 - "unrm": Brings back either a specific file (by specifying "unrm [FILE]") or the last thing removed (by specifying "unrm --last").
 - "emptytrash": empties the ~/.trash/ folder and clears the trash register. Note that this deletion is permanent.

Use "[command] --help" for a few more details.

This package includes a blacklist--files that rmpp won't remove unless you SPECIFICALLY TELL IT to throw caution to the wind with "--no-blacklist". There is a global blacklist specified at /etc/rmpp.conf, and a user-specific one specified at ~/.config/rmpp.conf, though just look at the source and see you can change that folder to something different.

INSTALLATION:

HARDxCORE way:
 1. This is dangerous. Start in the folder you want your scripts to live in (mine is ~/.scripts/rmpp/)
 2. "ln -s $(pwd)/rmpp /bin/rmpp"
 3. "ln -s $(pwd)/unrm /bin/unrm"
 4. "ln -s $(pwd)/emptytrash /bin/emptytrash"
 5. Put in your ~/.bashrc "alias rm='rmpp'"
 6. "sudo mv rmpp.conf /etc/rmpp.conf"

NOTE: When I installed this way, it made my boot/shutdown unstable. Strongly do not recommend doing it this way---at least until I work out exactly the source of the instability.

SAFER way:
In your ~/.bashrc,
```bash
alias rm='/location/of/rmpp'
alias unrm='/location/of/unrm'
alias rmdir='/location/of/rmdirpp'
alias emptytrash='/location/of/emptytrash'
```
If you put these files in some directory (say, ~/.scripts/) that's in your PATH, you don't need to specify the full location. In this case, you can specify GNU rm with /bin/rm.

DISCLAIMERS:
 - USE AT YOUR OWN RISK. Read the source before using it.
 - It can be confusing to have two 'remove' behaviors, and that confusion lead you even further astray than default /bin/rm would have anyway. Some in-program deletion commands (like in Emacs, maybe?) may still permanently delete files. Don't get cocky.
 - This software is INCOMPLETELY TESTED and therefore may/will be BUGGY. You might kill some files you didn't mean to. (Though I'm almost certain you won't mess up files you don't rm.)
 - Note the global blacklist is very incomplete, so whatever you may consider "important" might not be covered on it.
 - This package doesn't support files with "\n" in their names. If you use "\n" in your filenames, you're probably used to that, though.

BUGS:
 - Currently doesn't behave with the filename '*'

TO-DO:
 - Add to the blacklist.
 - Properly define/implement behavior for name-conflicts which can arise with unrm.

Contact at mail@jpconger.com :)
