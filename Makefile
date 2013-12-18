
PREFIX?=/usr/local/bin
BIN=block


install: $(BIN)
	mkdir -p $(PREFIX)
	cp -f $^ $(PREFIX)/

uninstall:
	rm -f $(PREFIX)/$(BIN)

test: $(BIN)
	./$^ test/test.md
	./$^ test/test.md -o out.md

clean:
	rm out.md


.PHONY: install uninstall test clean

