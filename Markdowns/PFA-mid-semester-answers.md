PFA - Mid semester exam answer sheet
================
Deepak Sharma (Instructor-in-Charge)

## Question no. 1

**Answer**

A-8

B-9

C-7

D-6

E-10

F-2

G-4

H-3

I-1

J-5

## Question no. 2

Code demonstration

In R **str()** function provides the type of data structure

``` r
a <- 5
str(a)
```

    ##  num 5

``` r
a <- '5'
str(a)
```

    ##  chr "5"

In Python **str()** function provides type-casting (conversion of a data
type into string data type)

``` python
a = 5
type(a)
```

    ## <class 'int'>

``` python
a = str(a)
type(a)
```

    ## <class 'str'>

## Question no. 4

R code for demonstration

``` r
dist <- rnorm(n = 1000, mean = 100, sd = 10)
hist(dist)
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
boxplot(dist)
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-3-2.png)<!-- -->

``` r
pie(dist)
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-3-3.png)<!-- -->

``` r
plot(dist, type = 'l')
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-3-4.png)<!-- -->

## Question no. 5

All 5 options print the element ‘l’ from ‘Hello’ string.

In Python

Indexing starts from 0 from Left side. Indexing from right side starts
from -1.

Therefore indices for following string would be

``` python
#Python indexing
#   0   1   2   3   4
#   H   E   L   L   O
#  -5  -4  -3  -2  -1
```

Code demonstration

``` python
Name = "Hello"
print(Name[3])
```

    ## l

``` python
print(Name[-2])
```

    ## l

``` python
print(Name[-3])
```

    ## l

``` python
print(Name[-1-1-1])
```

    ## l

``` python
print(Name[1+1])
```

    ## l

## Question no. 6

#### Dot chart

``` r
dotchart(iris$Sepal.Width[1:30], pch = 17)
abline(v = 3) # Four flowers having same sepal width (3) are not overlapping
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

#### Violin plot

``` r
dist <- rnorm(n = 1000, mean = 100, sd = 10)
library("vioplot")
vioplot(dist) # Includes Histogram + Boxplot
```

![](PFA-mid-semester-answers_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

## Question no. 10

Output of following Python code

``` python
import numpy as np

def loop(input_list):
  loop_list = [0, 0, 0, 0]
  for i in range(1, len(input_list)):
    if i < 4:
      loop_list[i-1] = input_list[i] - input_list[i-1]
  return(loop_list)

input_list1 = [10, 20, 30, 40]
input_list2 = [2, 4, 15]
output = []

try:
  output = np.divide(input_list1, input_list2)
  print("1")
except:
  print("2")
  input_list2.append(20)
  output = np.divide(input_list1, input_list2)
  if output[-2] == 2:
    print(output[3])
    print(loop(output))
  else:
    loop(input_list1)
finally:
  print("4")
```

    ## 2
    ## 2.0
    ## [0.0, -3.0, 0.0, 0]
    ## 4

``` python
print(output)
```

    ## [5. 5. 2. 2.]

#### Simulation (Debugging mode)

| **Line no.** | **i** | **loop_list**               | **output**                   | **input_list1**         | **input_list2**       | **input_list**               |
|--------------|-------|-----------------------------|------------------------------|-------------------------|-----------------------|------------------------------|
| **10**       |       |                             |                              | **\[10, 20, 30, 40 \]** |                       |                              |
| **11**       |       |                             |                              | **\[10, 20, 30, 40 \]** | **\[2, 4, 15 \]**     |                              |
| **12**       |       |                             | **\[  \]**                   | **\[10, 20, 30, 40 \]** | **\[2, 4, 15 \]**     |                              |
| **19**       |       |                             | **\[  \]**                   | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** |                              |
| **20**       |       |                             | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** |                              |
| **3**        |       |                             | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **4**        |       | **\[ 0, 0, 0, 0 \]**        | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **5**        | **1** | **\[ 0, 0, 0, 0 \]**        | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **7**        | **1** | **\[ 0.0, 0, 0, 0 \]**      | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **5**        | **2** | **\[ 0.0, 0, 0, 0 \]**      | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **7**        | **2** | **\[ 0.0, -3.0, 0, 0 \]**   | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **5**        | **3** | **\[ 0.0, -3.0, 0, 0 \]**   | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
| **7**        | **3** | **\[ 0.0, -3.0, 0.0, 0 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** | **\[10, 20, 30, 40 \]** | **\[2, 4, 15, 20 \]** | **\[ 5.0, 5.0, 2.0, 2.0 \]** |
