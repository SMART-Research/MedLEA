#' Obtain link to download 1099 leaf images
#' 
#' Download leaf image repository
#' @description A repository of leaf images of medicinal plants in Sri Lanka. The repository contains 1099 leaf images of 31 species and 29-45 images per species.
#' @param linkonly if TRUE only the shareable link will be displayed.
#' @return character listing the details of the dataset
#' @export
load_images <- function(linkonly=FALSE){
  if(linkonly==FALSE){
  print("The repository of leaf images of medicinal plants in Sri Lanka is collected by following the image acquisition steps that we identified.")
  print("The repository contains 1099 leaf images of 31 species and 29-45 images per species.These have simple arrangement. The photographs were taken from the device, Huawei nova 3i. The closest photographs were captured on a white background.")
  print("All the leaf images are in a google drive folder that anyone can access. You can download the images directly from the drive.")
  link <- "https://drive.google.com/drive/folders/1W3ap8UhBCIVN5U_UUVSZeTh7VG4Jqbev?usp=sharing"
  print(paste0("The shareable link: ",link))
  } else {
    print("All the leaf images are in a google drive folder that anyone can access. You can download the images directly from the drive.")
    link <- "https://drive.google.com/drive/folders/1W3ap8UhBCIVN5U_UUVSZeTh7VG4Jqbev?usp=sharing"
    print(paste0("The shareable link: ",link))
  }
}
#' @example
#' library(MedLEA) 
#' load_images()
