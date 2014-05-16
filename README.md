RMPP

It's safer than GNU rm, becuase GNU rm isn't safe.

Components:
 - "rmpp": rather than truly removing the file(s) to be rm'd, moves them to the special directory ~/.trash/, indexed and such in a certain way.
 - "unrm": Brings back either a specific file (by specifying "unrm [FILE]") or the last thing removed (by specifying "unrm --last").
 - "emptytrash": empties the ~/.trash/ folder and clears the trash register. Note that this deletion is permanent.

Use "[command] --help" for a few more details.

This package includes a blacklist--files that rmpp won't remove unless you SPECIFICALLY TELL IT to throw caution to the wind with "--no-blacklist". There is a global blacklist specified at /etc/rmpp.conf, and a user-specific one specified at ~/.config/rmpp.conf, though just look at the source and see you can change that folder to something different.

INSTALLATION:
 1. This is dangerous. Start in the folder you want your scripts to live in (mine is ~/.scripts/rmpp/)
 2. "ln -s $(pwd)/rmpp /bin/rmpp"
 3. "ln -s $(pwd)/unrm /bin/unrm"
 4. "ln -s $(pwd)/emptytrash /bin/emptytrash"
 5. Put in your ~/.bashrc "alias rm='rmpp'"
 6. "sudo mv rmpp.conf /etc/rmpp.conf"

DISCLAIMERS:
 - USE AT YOUR OWN RISK. Read the source before using it.
 - There are serious reasons why you shouldn't replace default /bin/rm with something else or alias rm=.... It can be confusing to have two 'remove' behaviors, and that confusion lead you even further astray than default /bin/rm would have anyway. Some in-program deletion commands (like in Emacs, maybe?) may still permanently delete files. Don't get cocky.
 - This software is INCOMPLETELY TESTED and therefore may/will be BUGGY. You might kill some files you didn't mean to. (Though I'm almost certain you won't mess up files you don't rm.)
 - Note the global blacklist is very incomplete, so whatever you may consider "important" might not be covered on it.

TO-DO:
 - Add to the blacklist.
 - Add wildcard/glob support to unrm. "--last" works well if you accidentally delete the whole contents of a folder (say, you typed "rm * .txt" instead of "rm *.txt"), realize it right away, and want it back. But it's not everything.
 - Bug squashing, naturally.

Improvements/additions to the blacklist/etc. to mail@jpconger.com :)
