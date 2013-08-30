tmux-completion
===============

bash-completion scripts for
[tmux](http://robots.thoughtbot.com/post/2641409235/a-tmux-crash-course)

To Use
------

    git clone https://github.com/cwacek/tmux-completion.git
    source tmux-completion/tmux-completion.bash


Known Issues
------------
This first iteration is quite simple, and autocompletes session
names for all instances of '-t'. Some tmux commands use -t to
refer to clients not sessions, and it will complete incorrectly
for those.
