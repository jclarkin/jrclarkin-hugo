default:
	@echo "Please see the Makefile for a list of commands"

development:
	hugo server  --watch --buildDrafts

staging:
	hugo server --watch

production:
	hugo server --watch --disableLiveReload
