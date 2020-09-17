.PHONY = all init install configure

all: init install configure

init:
	./init.sh

install:
	ansible-playbook install.yml --ask-become-pass

configure:
	ansible-playbook configure.yml
	./configure.sh