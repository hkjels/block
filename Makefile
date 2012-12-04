
DST=/usr/local/bin


install:
	cp -f bin/block "$(DST)/block"

uninstall:
	rm -f "$(DST)/block"


.PHONY: install uninstall

