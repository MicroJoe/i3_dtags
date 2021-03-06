EXEC=i3-dtags
SCRIPTS=i3-dtags.sh i3-dtags-moveto.sh

INSTALL_DIR=/usr/local/bin/

LDFLAGS=-lcjson
CFLAGS=-W -Wall -Wextra -std=c89 -pedantic -ansi -O2

.PHONY: clean, install

all: $(EXEC)

$(EXEC): i3-dtags.c
	$(CC) $(LDFLAGS) $(CFLAGS) -o $(EXEC) i3-dtags.c

install: $(EXEC)
	cp $(EXEC) $(INSTALL_DIR)
	cp $(SCRIPTS) $(INSTALL_DIR)

clean:
	rm $(EXEC)
