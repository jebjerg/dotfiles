DESTDIR = $(HOME)

apps = notion tmux vim xorg zsh

help:
	@echo "make [all $(apps)]"

all: $(apps)
	@echo "$^ installed"

# notion {{{
notion: $(patsubst notion/%.lua,$(DESTDIR)/.notion/%.lua,$(wildcard notion/*.lua))

$(patsubst notion/%,$(DESTDIR)/.notion/%,$(wildcard notion/*.lua)):
	mkdir -p $(dir $@)
	ln -sf $(patsubst $(DESTDIR)/.notion/%,$(PWD)/notion/%,$@) $@
# }}}

# tmux {{{
tmux: $(patsubst tmux/%,$(DESTDIR)/.%,$(wildcard tmux/*))

$(patsubst tmux/%,$(DESTDIR)/.%,$(wildcard tmux/*)):
	ln -sf $(patsubst $(DESTDIR)/.%,$(PWD)/tmux/%,$@) $@
# }}}

# vim {{{
vim: $(DESTDIR)/.vimrc $(patsubst vim/%,$(DESTDIR)/.vim/%,$(wildcard vim/*/*))

$(DESTDIR)/.vimrc:
	ln -sf vim/vimrc $@

$(patsubst vim/%,$(DESTDIR)/.vim/%,$(wildcard vim/*/*)):
	mkdir -p $(dir $@)
	ln -sf $(patsubst $(DESTDIR)/.vim/%,$(PWD)/vim/%,$@) $@
# }}}

# xorg {{{
xorg: $(patsubst xorg/%,$(DESTDIR)/.%,$(wildcard xorg/*))

$(patsubst xorg/%,$(DESTDIR)/.%,$(wildcard xorg/*)):
	ln -sf $(patsubst $(DESTDIR)/.%,$(PWD)/xorg/%,$@) $@
# }}}

# zsh {{{
zsh: $(patsubst zsh/%,$(DESTDIR)/.%,$(wildcard zsh/*))

$(patsubst zsh/%,$(DESTDIR)/.%,$(wildcard zsh/*)):
	ln -sf $(patsubst $(DESTDIR)/.%,$(PWD)/zsh/%,$@) $@
# }}}

.PHONY: help notion tmux vim xorg zsh
# vim: set foldmethod=marker:foldmarker={{{,}}}:set expandtab!
# TODO: clean target
