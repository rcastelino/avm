
PREFIX ?= /usr/local

install: bin/avm
	cp $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/avm

.PHONY: install uninstall
