# Writing a robust code - a nice way to check & install a package
load_pkgs <- c("e1071","caret")
for (i in load_pkgs) # Perform a for loop for each item in pkg list
{
    if(! (i %in% installed.packages())) # If package is not installed
        install.packages(i) # Install the package
    do.call('library',as.list(i)) # Load the library if already installed
}

