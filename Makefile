PANDOC=pandoc
INSTALL=install

NAME=license
SCRIPT=$(NAME).sh
MANPAGE=$(NAME).1

PREFIX=/usr/local
MAN1DIR=$(PREFIX)/share/man/man1
BINDIR=$(PREFIX)/bin

%.1: %.1.md
	$(PANDOC) -sw man -Vdate='$(shell date +'%B %d, %Y')' $(PANDOCFLAGS) $< -o $@

install: $(SCRIPT) $(MANPAGE)
	$(INSTALL) -d $(BINDIR) $(MAN1DIR)
	$(INSTALL) -C $(SCRIPT) $(PREFIX)/bin/$(NAME)
	$(INSTALL) -Cm 555 $(MANPAGE) $(MAN1DIR)/$(MANPAGE)

PHONY: install
