# Documentation

Source files for <http://techcultivation.org/docs/>.

# Generate HTML/PDF from Markdown files

```
make
```

PDF and HTML output appear in dist/

## pandoc standalone

```
sudo apt-get install pandoc texlive-fonts-recommended texlive-latex-base texlive-xetex lmodern
pandoc doc.md -o doc.pdf --latex-engine=xelatex
```

# License
 
Content of this repository is licensed under [Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/) and belongs to the public domain. Use as you wish.
