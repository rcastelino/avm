
PREFIX ?= /usr/local

install: bin/n
	cp $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/avm

.PHONY: install uninstall