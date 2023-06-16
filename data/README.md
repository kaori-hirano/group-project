Data for Final Project: \[INSERT TITLE HERE\]
================

This document renders to a *Markdown* file (and in particular, the
Github flavor of Markdown). On your computer, it may not look very nice,
with minimal formatting. Once rendered as such, staged, committed, and
pushed to Github, however it becomes visible as an html in your repo. In
this document, you should briefly describe the datasets you are working
with in your project **including their source, with links if
applicable!**

*You should delete this preamble once you update this file for the first
time.*

### Codebook

Put the codebook for your data here. Include only variables used in your
analysis. Below you will find one example of formatting a codebook so
that it appears nicely on Github, but it is not the only way. Note that
this .qmd file works like any other Quarto document you have worked
with. You can import/load in data in R with something like
`import_function(here::here("data/your_file_name.file_extension")` to
help with creating a codebook. *Delete this paragraph when you update
this page with information relevant to your project. Replace the code in
the chunk with code relevant to your project*.

<div class="cell-output-display">

| Variables      | Description                                                   | Type      |
|:---------------|:--------------------------------------------------------------|:----------|
| `manufacturer` | manufacturer name                                             | character |
| `model`        | model name                                                    | character |
| `displ`        | engine displacement, in litres                                | double    |
| `year`         | year of manufacture                                           | integer   |
| `cyl`          | number of cylinders                                           | integer   |
| `trans`        | type of transmission                                          | character |
| `drv`          | the type of drive train, where f = front-wheel drive, 4 = 4wd | character |
| `cty`          | city miles per gallon                                         | integer   |
| `hwy`          | highway miles per gallon                                      | integer   |
| `fl`           | fuel type                                                     | character |
| `class`        | ‘type’ of car                                                 | character |

</div>
