#Import necessary packages
library(hexSticker)
library(here)
library(showtext)

# Loading Google fonts
font_add_google("Gochi Hand", "gochi")
#Automatically use showtext to render text for future device
showtext_auto()
#img <- system.file("leaf.png", package  = "MedLEA")
sticker(here("leaf_n.png"), package = "MedLEA", p_size = 20, p_y = 1.65, s_x = .95, s_y =.95, s_width = .6, s_height = 0.3, h_fill = "#FFFFFF",p_color = "black",p_family = "gochi", filename = here("sticker.png"))

