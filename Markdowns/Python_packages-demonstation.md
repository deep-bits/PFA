Python package development
================

Once you have created a Python file you can upload this on a web
repository where others can use this module.

- Loading a python module from a remote repository can be done using
  `httpimport` module

- A python module is a python file including certain python class and/or
  functions to be used by some other python script/function.

- In order to use a github hosted python module you can use python’s
  `httpimport` module, which can be installed using following command.

``` bash
pip install httpimport
```

- Once `httpimport` python module is installed it can fetch any valid
  `URL` link where python module is located.

- Following Python code shows you a demo of calling the **circle**
  module’s **area()** function as available in a public GitHub
  repository.

``` python
import httpimport
url = "https://raw.githubusercontent.com/deep-bits/PFA/main/Python-tutorials/"
with httpimport.remote_repo(url):
    import circle as c
    import Factorial_via_iteration as f
print("Area of a circle with radius =",4,"is",c.area(4))
```

    ## Area of a circle with radius = 4 is 50.26544

``` python
print("Factorial of",4, "is",f.factI(4))
```

    ## Factorial of 4 is 24

**Summary** : A repository link can be provided to
`httpimport's remote_repo()` function with which you can import the
python modules as hosted on web repositories such as GitHub. After the
import of remote repository it can be accessed like a local python
module.
