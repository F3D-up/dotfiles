 #!/bin/sh
LIST_OF_APPS="diff-so-fancy"
LIST_OF_APPS_CLASSIC="nvim"
snap refresh
snap install $LIST_OF_APPS
snap install $LIST_OF_APPS_CLASSIC --classic
