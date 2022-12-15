library(tidyverse)
text <- "\rText"
nchar(text)
strc <- str_c("This is some", text)
cat(strc)
for(i in 1:10){
    Sys.sleep(0.3)
    cat('\r|')
    Sys.sleep(0.3)   
    cat('\r/')
    Sys.sleep(0.3)
    cat('\r|')
    Sys.sleep(0.3)
    cat('\r\\')
}
text <- NA
typeof(text)
text <- str_replace_na(text,'Not a number')
typeof(text)
length(text)
str_c("before-", c("one", "two", "three"), "-after")
text <-  str_c(c("Word1","Word2"), collapse = ",")
print(text)
str_length(text) 
print(paste0(text))

texts <- c("File-01", "File-10")
str_sub(texts, 1, 4)
# Extract last position to backward values
str_sub(texts, -3, -1)
print(stringi::stri_reverse(texts))
str_sub(texts, 1, 1) <- str_to_lower(str_sub(texts, 1, 1))
texts
str_sub(texts, 1, 4) <- str_to_upper(str_sub(texts, 1, 4))
texts
str_sort(texts)

library(stringi)
stri_cmp_lt('hlsadny', 'chladny', locale='sk_SK')
stri_count_fixed(texts, '1')
stri_count_fixed(texts, 'File-0')
stri_datetime_create(2015, 12, 31, 23, 59, 59.999)
text <- "Word "
stri_dup(text, 3)
stri_duplicated(c('a', 'b', 'a', NA, 'a', NA))
stri_enc_isascii('\u0105')
print('\u0105\u0104')
stri_enc_isascii(letters[1:3])
stri_flatten(LETTERS, collapse='-')
stri_flatten(c(NA, '', 'A', '', 'B', NA, 'C'), collapse=',', na_empty=TRUE, omit_empty=TRUE)
stri_join(1:13, letters, sep='')
stri_length('\u0105')
stri_length(c('abc', '123', '\u0105\u0104'))
str_replace_na(NA,'Not a number')
stri_na2empty(c('a', NA, '', 'b'))
stri_remove_empty(c('a', NA, '', 'b'), na_empty = TRUE)
stri_numbytes(letters[1:3])
stri_pad_left('stringi', 9, pad='-')
stri_pad_right('stringi', 9, pad='-')
stri_pad_both('stringi', 9, pad='*')
stri_reverse(c('123', 'Hello'))
stri_split_fixed('a_b_c_d', '_')
stri_printf("%4s=%.3f", c("e", "e\u00b2", "\u03c0", "\u03c0\u00b2"),
            c(exp(1), exp(2), pi, pi^2))
text <- "
Hello Mr. XYZ,
I hope this email finds you well.

This email is a gentle reminder for the application submission for project XYZ"
stri_write_lines(str = text, fname = 'a.txt')
