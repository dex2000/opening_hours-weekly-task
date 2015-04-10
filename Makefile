
README.html:

%.html: %.md
	pandoc --from markdown_github --to html --standalone "$<" --output "$@"
