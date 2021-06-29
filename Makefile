PREFIX=/usr/local

all: install

install:
	@mkdir -p ${PREFIX}/bin
	@install -D -m 0755 catkin-compile-commands ${PREFIX}/bin/

uninstall:
	@rm ${PREFIX}/bin/catkin-compile-commands

