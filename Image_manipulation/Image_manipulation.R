library("pdftools")
library("magick")
library("pdftools")
library("tesseract")
getwd()
image_url <- "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/WMF_Support_and_Revenue%2C_Expenses_and_Net_Assets_at_Year_End.jpg/1218px-WMF_Support_and_Revenue%2C_Expenses_and_Net_Assets_at_Year_End.jpg"

wiki <- image_read(image_url)
wiki %>% plot()
print(image_info(wiki))
print(wiki)
plot(wiki)
typeof(wiki)
image_browse(wiki) # pops-up
wiki_png <- image_convert(wiki, "png")
image_info(wiki_png)
plot(wiki_png)
wiki_png %>% plot()
image_info(wiki_png)
wiki_png %>%
  image_rotate(90) %>%
  image_write('wiki_rot_90.png','png')
mod_img <- image_modulate(wiki, 
                          brightness = 120, 
                          saturation = 20, 
                          hue = 20)
plot(mod_img)

cropped <- image_crop(mod_img, "+ 150 + 50")
cropped <- image_crop(mod_img, "x 220")
cropped <- image_crop(mod_img, "1200 x 220 + 100 + 0")
cropped %>% plot()
appended <- image_append(c(mod_img,
    mod_img %>% 
      image_crop("82 x 1250 + 60 + 0")
    )
  )
appended %>% plot()

scaled <- image_scale(mod_img, "1218 x 1198")
scaled <- image_scale(mod_img, "x 1198")
scaled %>% plot()
scaled %>% image_info()

scaled %>% 
  image_flip() %>% 
  plot()
scaled %>% 
  image_flop() %>% 
  plot()

scaled %>%
image_fill("lightgray", 
            point = "+100+300", 
            fuzz = 30
          ) %>% 
          plot()

wiki %>% 
  image_blur(10, 5) %>% 
  plot()

wiki %>% 
  image_noise() %>% 
  plot()

wiki %>% 
  image_charcoal() %>%
  plot()

wiki %>% 
  image_oilpaint() %>%
  plot()

wiki %>% 
  image_negate() %>%
  plot()

wiki %>%
image_trim() %>%
  plot()

wiki %>%
  image_border(color="Black") %>%
  plot()

wiki %>% 
  image_chop("500x200") %>% 
  plot()





# image_scale() and image_sample() resize using simple ratio and pixel sampling algorithm

image_info(wiki)

wiki %>% 
  image_sample("100 x 100") %>%
  plot()

wiki %>% 
  image_resize("300 x 300 + 50", filter = NULL) %>% 
  plot()

wiki %>% 
  image_deskew( threshold = 90) %>% 
  plot()

wiki %>% 
  image_page(pagesize = 1, density = 72) %>% 
  plot()

wiki %>% 
  image_quantize(colorspace = 'gray') %>% 
  plot()

wiki %>% 
  image_scale(200) %>%
  plot()

kernal <- matrix(0, ncol = 3, nrow = 3)
kernal[1, 2] <- 0.25
kernal[2, c(1, 3)] <- 0.35
kernal[3, 2] <- 0.45
kernal

kernal1 <- matrix(0, ncol = 3, nrow = 3)
kernal1[1,c(1,3)] <- 0.25 
kernal1[3,c(1,3)] <- 1.25 
kernal1

wiki %>% 
  plot()

wiki %>% 
  image_convolve(kernal) %>%
  plot()



wiki %>% 
  image_convolve('FreiChen') %>%  # Blur Comet LoG DoG Laplacian Roberts Prewitt Compass Kirsch FreiChen
  image_negate() %>% 
  plot()


wiki %>%
  image_convolve('FreiChen') %>% 
  plot()

wiki %>%
  image_convolve('Roberts') %>% 
plot()

wiki %>%
  image_background("blue", flatten = TRUE) %>%
  image_annotate( "This is annotation", 
    font = 'Times',
    size = 100, 
    color = "Gray", 
    degrees = -45, 
    location = " + 295 + 800") %>% 
      plot()

class(wiki)


image_mosaic(wiki) %>% plot()

wiki %>%
  image_flatten('Modulate') %>% # Minus, Add
  plot()

img_comb <- image_read('https://upload.wikimedia.org/wikipedia/commons/3/37/Clock.gif')
img_comb %>% 
  image_scale("200x200") %>% 
  image_animate(fps = 10, dispose = "previous")

image_text <- image_read(image_url)
class(image_text)
print(image_text)
image_text %>% plot()
cat(image_ocr(image_text))
image_text %>% 
  image_ocr() %>% 
  cat



python <-  image_read_pdf('https://upload.wikimedia.org/wikipedia/commons/9/91/Python_Programming.pdf', density = 72)
class(python)
image_info(python)
python[1]
python[1] %>% 
  image_ocr() %>%
  cat
