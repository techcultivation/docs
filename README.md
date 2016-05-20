# Documentation

<https://cct.github.io/docs/Center_for_the_Cultivation_of_Technology.html>
<https://cct.github.io/docs/Center_for_the_Cultivation_of_Technology.pdf>
<https://cct.github.io/docs/legal/bylaws/satzung.pdf>
<https://cct.github.io/docs/legal/bylaws/satzung.html>
... etc

# Generate HTML/PDF from Markdown files

```
make
```

PDF and HTML output appear in dist/

## deploy to github pages

```
./deploy.sh
```
(copies dist/ to gh-pages branch)

## pandoc standalone

```
sudo apt-get install pandoc texlive-fonts-recommended texlive-latex-base texlive-xetex lmodern
pandoc doc.md -o doc.pdf --latex-engine=xelatex
```

# License
 
Content of this repository is licensed under [Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/) and belongs to the public domain. Use as you wish.
