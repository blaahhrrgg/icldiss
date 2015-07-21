# icldiss
A LaTeX template for a dissertation for Imperial College London.

## About

These documents should provide a template that fulfills the layout requirements for Dissertations of Imperial College London (circa 2015). The requirements were taken from this [webpage](http://www3.imperial.ac.uk/registry/exams/thesisandvivas). To do so it uses the documentclass "icldt" which is provided free of charge under the MIT license.

This is a modified and updated version of numerous other templates I have found on the internet. Most notably the template "icldt" created by Daniel Wagner ([www.PrettyPrinting.net](www.PrettyPrinting.net)) circa 2008 provided free of charge under a MIT license and the template "ICMathsThesis" template provided by Nigel Lawrence et. al. on the Department of Mathematics website. The bibliography style file "jfm2.bst" by Stefan Llewellyn Smith is also included to make a nice looking, Journal of Fluids Mechanics style, bibliography.

This version arose from some changes in the layout requirements and my desire to change certain aesthetic elements. Some changes include:
*changed layout of title page and use of smallcaps (\sc)
* use of the package fancyhdr to add header and footer
* alteration of some package options
* using the jfm2.bst to style the bibliography

This is by no means a complete template and you may wish to edit some of the options in "icldt" to reach something that suits you. Nevertheless, I hope that by providing this template I have made a few people's lives easier!

## How to get started / compiling

Download the files and compile the LaTeX document in the usual fashion, i.e. something along the lines of

`pdflatex icldiss.tex`

`bibtex icldiss.aux`

`pdflatex icldiss.tex`

`pdflatex icldiss.tex`

should do the trick. Using something like [latexmk](http://users.phys.psu.edu/~collins/software/latexmk-jcc/) should make it easier though.

Once compiled, examine the resulting document and then start typing/editing away. 

## Tips

* I always found [Detexify](http://detexify.kirelabs.org/classify.html) a great tool to find LaTeX symbols I could not remember.
* Use \input{section1.tex} to make your dissertation modular and easier to manage. See [here](https://en.wikibooks.org/wiki/LaTeX/Modular_Documents) for more information.
* Using tikz and pgfplots is a great way of getting great looking figures. See [here](http://www.howtotex.com/packages/beautiful-matlab-figures-in-latex/) for more information. If you have a lot of tikz images then you should compile with the option `-shell-escape'.
