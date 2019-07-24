# Requires circleci CLI installation

.SECONDARY:
.SECONDEXPANSION:

ORB_VER ?= 1.0.3

.phony: help publish publish-dev validate

publish: validate-orb ##@Build publish
	circleci orb publish orb.yml alcideio/alcide-advisor@$(ORB_VER)

publish-dev: validate-orb ##@Build publish-dev
	circleci orb publish orb.yml alcideio/alcide-advisor@dev:$(ORB_VER)


validate-config: ##@Build Validate
	circleci config validate .circleci/config.yml
    
validate-orb:  ##@Build Validate
	circleci orb validate orb.yml

validate-all: validate-config validate-orb


HELP_FUN = \
         %help; \
         while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^(.+)\s*:.*\#\#(?:@(\w+))?\s(.*)$$/ }; \
         print "Usage: make [options] [target] ...\n\n"; \
     for (sort keys %help) { \
         print "$$_:\n"; \
         for (sort { $$a->[0] cmp $$b->[0] } @{$$help{$$_}}) { \
             $$sep = " " x (30 - length $$_->[0]); \
             print "  $$_->[0]$$sep$$_->[1]\n" ; \
         } print "\n"; }

help: ##@Misc Show this help
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)	

.DEFAULT_GOAL := help

USERID=$(shell id -u)	