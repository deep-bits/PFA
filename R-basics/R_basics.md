Basics of R programming
================

### R version you are using

``` r
version
```

    ##                _                                
    ## platform       x86_64-w64-mingw32               
    ## arch           x86_64                           
    ## os             mingw32                          
    ## crt            ucrt                             
    ## system         x86_64, mingw32                  
    ## status                                          
    ## major          4                                
    ## minor          2.1                              
    ## year           2022                             
    ## month          06                               
    ## day            23                               
    ## svn rev        82513                            
    ## language       R                                
    ## version.string R version 4.2.1 (2022-06-23 ucrt)
    ## nickname       Funny-Looking Kid

### Information about your session

``` r
sessionInfo()
```

### Locations where packages are installed

``` r
.libPaths()
```

    ## [1] "C:/Users/Deepak/AppData/Local/R/win-library/4.2"
    ## [2] "C:/Program Files/R/R-4.2.1/library"

### Packages installed in library path/s

``` r
.packages(all.available = TRUE)
```

### Packages that you have loaded

``` r
(.packages())
```

    ## [1] "stats"     "graphics"  "grDevices" "utils"     "datasets"  "methods"  
    ## [7] "base"

### Check package version

``` r
packageVersion('stats')
```

    ## [1] '4.2.1'

### R Citation

``` r
citation()
```

    ## 
    ## To cite R in publications use:
    ## 
    ##   R Core Team (2022). R: A language and environment for statistical
    ##   computing. R Foundation for Statistical Computing, Vienna, Austria.
    ##   URL https://www.R-project.org/.
    ## 
    ## A BibTeX entry for LaTeX users is
    ## 
    ##   @Manual{,
    ##     title = {R: A Language and Environment for Statistical Computing},
    ##     author = {{R Core Team}},
    ##     organization = {R Foundation for Statistical Computing},
    ##     address = {Vienna, Austria},
    ##     year = {2022},
    ##     url = {https://www.R-project.org/},
    ##   }
    ## 
    ## We have invested a lot of time and effort in creating R, please cite it
    ## when using it for data analysis. See also 'citation("pkgname")' for
    ## citing R packages.

### R License

``` r
license()
```

    ## 
    ## This software is distributed under the terms of the GNU General
    ## Public License, either Version 2, June 1991 or Version 3, June 2007.
    ## The terms of version 2 of the license are in a file called COPYING
    ## which you should have received with
    ## this software and which can be displayed by RShowDoc("COPYING").
    ## Version 3 of the license can be displayed by RShowDoc("GPL-3").
    ## 
    ## Copies of both versions 2 and 3 of the license can be found
    ## at https://www.R-project.org/Licenses/.
    ## 
    ## A small number of files (the API header files listed in
    ## R_DOC_DIR/COPYRIGHTS) are distributed under the
    ## LESSER GNU GENERAL PUBLIC LICENSE, version 2.1 or later.
    ## This can be displayed by RShowDoc("LGPL-2.1"),
    ## or obtained at the URI given.
    ## Version 3 of the license can be displayed by RShowDoc("LGPL-3").
    ## 
    ## 'Share and Enjoy.'

### R’s other functions

``` r
### demo(colors)            ### Check colors
### help()                  ### Take help from R
### help("rainbow")         ### Take help for R rainbow function
### help.start()            ### First help page of R
### q()                     ### Quit R
### RShowDoc("COPYING")     ### R licenses
### RShowDoc("GPL-3")
### RShowDoc("LGPL-2.1")
### RShowDoc("LGPL-3")
```
