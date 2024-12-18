all: docs/queries.md

docs/queries.md: config/queries.md.jinja2 data/queries.yml
	jinjanate $^ > $@
