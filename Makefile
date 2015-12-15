MAIN=.
src=$(MAIN)/dev
materialize = $(MAIN)/node_modules/materialize-css

all: css/app.css js/app.js fonts/*

css/app.css:
	sass --scss $(src)/app.scss > $(MAIN)/css/app.css

js/app.js:
	uglifyjs $(materialize)/bin/materialize.js $(src)/app.js > $(MAIN)/js/app.js

fonts/*:
	cp $(materialize)/font/roboto/* $(MAIN)/font/roboto/

clean:
	rm -f $(MAIN)/css/app.css
	rm -f $(MAIN)/js/app.js
	rm -f $(MAIN)/fonts/*
