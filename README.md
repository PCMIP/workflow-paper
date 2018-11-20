# workflow-paper
Paper for the workflow justification.

## Contributors

The full list of [project contributors](https://pcmip.github.io/participants/) can be found on the PCMIP project website.  Individuals are welcome to contribute to this effort through edits and pull requests.  You are respectfully requested not to work directly on the `master` branch of this project.

[The paper](https://github.com/PCMIP/workflow-paper/blob/master/main-paper.Rmd) is written using [RMarkdown](https://rmarkdown.rstudio.com/).  The references accompany the paper as a separate BibTeX file.  The paper can be rendered to HTML/PDF/DOCX formats in one of two ways:

### Directly in RStudio

By cloning this repository and opening the `Rmd` file in RStudio it should be possible to directly render the document to any one of three formats (HTML, PDF or DOCX).

### From the command line

The `bash` script `autobuild.sh` provides a script that monitors the parent `Rmd` file and re-builds the file using Pandoc any time a new change is made and saved in the `Rmd`.  This script outputs directly to the `outputs` folder and uses the convention:

```bash
bash autobuild.sh main-paper.Rmd references.bib paper_output.html
```


## Products

A working copy of this paper can be found [here](http://htmlpreview.github.io/?https://github.com/PCMIP/workflow-paper/blob/master/output/paper_output.html).

This paper is a product of the 2018 PCMIP meeting at Mount Royal University, Calgary AB.  More information about the meeting, including presenter slides, can be found at [the meeting website](http://pcmip.github.io).
