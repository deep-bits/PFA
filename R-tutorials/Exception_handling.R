# Exception handling in R
tryCatch( 
    expr = {
        a <-  c(1,2,3)
        print('Above statement gets executed without any error')
        print(a[2] + '3')
        print('This statement won\'t execute if there are errors in expr block')
    },
    error = function(e){
        print("This block only executes if there are errors")
        #stop('Even stop function doesn\'t stop the finally block')
        
    },
    warning = function(w){      
        print("This block only executes if there are warnings")
    },
    finally = {
        print("Statements written in finally block will always execute")
        }
)

