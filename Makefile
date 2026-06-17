BUNDLE := /Users/leonardobai/.gem/ruby/2.6.0/bin/bundle

serve:
	$(BUNDLE) exec jekyll serve --port 4000 --livereload

build:
	$(BUNDLE) exec jekyll build

articles:
	python3 scripts/fetch_medium.py

.PHONY: serve build articles
