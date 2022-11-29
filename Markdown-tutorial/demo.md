R&Python
================
Deepak Sharma
2022-11-17

## R code inside Rstudio

R & Rstudio can be used to run Python code as well, for this you need to
have the python interpreter installed in your system. Here is a r
markdown file which runs both R & Python.

``` r
for(i in 1:3){ # R syntax to implement a for loop
    i = i + 1 # R's syntax for increment by 1
    cat(i,'\n')
}
```

    ## 2 
    ## 3 
    ## 4

## Python code in RStudio

``` python
for i in range(1,4): # For loop for range 2 to 4
    i += 1 # Python allows shorthand increment syntax
    print(i)
```

    ## 2
    ## 3
    ## 4
