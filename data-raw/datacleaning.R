##Import necessary packages
library(packrat) # Dependency Management System for R
library(tidyverse) # Collection of essential R packages, performing and interacting with the data
library(here) # To find the project's files based on the current working directory at the time when the package is loaded


##Load the dataset
df  <- read.csv('data-raw/Ruhuna_dataset.csv')

df %>% head(5)
df_col <- df %>% colnames()


#To replace dots by underscore in the column names
df_col_r <- gsub("\\.","_",df_col)
names(df) <- df_col_r

#To replace the shapes with their actual names
df$Shape[df$Shape == '1'] <- 'Heart'
df$Shape[df$Shape == '2'] <- 'Round'
df$Shape[df$Shape == '3'] <- 'Needle'
df$Shape[df$Shape == '7'] <- 'Scale-like shaped'
df$Shape[df$Shape == '8'] <- 'Simple round'
df$Shape[df$Shape == '4'|df$Shape == '5'|df$Shape == '6'] <- 'Diamond'

#To replace the arrangements of leaves with their actual names
df$Arrangements[df$Arrangements == '1'] <- 'Simple'
df$Arrangements[df$Arrangements == '2'] <- 'Compound'

#To replace the Bipinnately compound with their presence and absence
df$Bipinnately_compound[df$Bipinnately_compound == '0'] <- 'False'
df$Bipinnately_compound[df$Bipinnately_compound == '1'] <- 'True'

#To replace the Pinnately compound with their presence and absence
df$Pinnately_compound[df$Pinnately_compound == '0'] <- 'False'
df$Pinnately_compound[df$Pinnately_compound == '1'] <- 'True'

#To replace the Palmately compound with their presence and absence
df$Palmately_compound[df$Palmately_compound == '0'] <- 'False'
df$Palmately_compound[df$Palmately_compound == '1'] <- 'True'

#To replace the edge types of leaves with their actual names
df$Edges[df$Edges == '1'] <- 'Smooth'
df$Edges[df$Edges == '2'] <- 'Toothed'
df$Edges[df$Edges == '3'] <- 'Lobed'
df$Edges[df$Edges == '4'] <- 'Crenate'

#To replace the Uniform Background with their presence and absence
df$Uniform_background[df$Uniform_background == '0'] <- 'False'
df$Uniform_background[df$Uniform_background == '1'] <- 'True'

#To replace the Red Margin with their presence and absence
df$Red_Margin[df$Red_Margin == '0'] <- 'False'
df$Red_Margin[df$Red_Margin == '1'] <- 'True'

#To replace the Shaded Margin with their presence and absence
df$Shaded_margin[df$Shaded_margin == '0'] <- 'False'
df$Shaded_margin[df$Shaded_margin == '1'] <- 'True'

#To replace the White shading with their presence and absence
df$White_Shading[df$White_Shading == '0'] <- 'False'
df$White_Shading[df$White_Shading == '1'] <- 'True'

#To replace the Red shading with their presence and absence
df$Red_Shading[df$Red_Shading == '0'] <- 'False'
df$Red_Shading[df$Red_Shading == '1'] <- 'True'

#To replace the While line with their presence and absence
df$White_line[df$White_line == '0'] <- 'False'
df$White_line[df$White_line == '1'] <- 'True'

#To replace the Green leaf with their presence and absence
df$Green_leaf[df$Green_leaf == '0'] <- 'False'
df$Green_leaf[df$Green_leaf == '1'] <- 'True'

#To replace the Red leaf with their presence and absence
df$Red_leaf[df$Red_leaf == '0'] <- 'False'
df$Red_leaf[df$Red_leaf == '1'] <- 'True'


#To replace the vein types of leaves with their actual names
df$Veins[df$Veins == '1'] <- 'Parallel'
df$Veins[df$Veins == '2'] <- 'Pinnate'
df$Veins[df$Veins == '3'] <- 'Palmate'


#To replace the Arrangement on the stem of leaves with their actual names
df$Arrangement_on_the_stem[df$Arrangement_on_the_stem == '1'] <- 'Alternate'
df$Arrangement_on_the_stem[df$Arrangement_on_the_stem == '2'] <- 'Opposite'
df$Arrangement_on_the_stem[df$Arrangement_on_the_stem == '3'] <- 'Whorled'


#To replace the Apice of leaves with their actual names
df$Leaf_Apices[df$Leaf_Apices == '1'] <- 'Acute'
df$Leaf_Apices[df$Leaf_Apices == '2'] <- 'Obtuse'
df$Leaf_Apices[df$Leaf_Apices == '3'] <- 'Rounded'
df$Leaf_Apices[df$Leaf_Apices == '4'] <- 'Cuspidate'
df$Leaf_Apices[df$Leaf_Apices == '5'] <- 'Mucronulate'
df$Leaf_Apices[df$Leaf_Apices == '6'] <- 'Truncate'
df$Leaf_Apices[df$Leaf_Apices == '7'] <- 'Truncate'

#To replace the Base of leaves with their actual names
df$Leaf_Base[df$Leaf_Base == '1'] <- 'Acuate'
df$Leaf_Base[df$Leaf_Base == '2'] <- 'Rounded'
df$Leaf_Base[df$Leaf_Base == '3'] <- 'Auriculate'
df$Leaf_Base[df$Leaf_Base == '4'] <- 'Hastate'
df$Leaf_Base[df$Leaf_Base == '5'] <- 'Gradually tapering'
df$Leaf_Base[df$Leaf_Base == '6'] <- 'Truncate'
df$Leaf_Base[df$Leaf_Base == '7'] <- 'Cordate'
df$Leaf_Base[df$Leaf_Base == '8'] <- 'Attenuate'
df$Leaf_Base[df$Leaf_Base == '9'] <- 'Tumcate'
df$Leaf_Base[df$Leaf_Base == '10'] <- 'Cuneate'
df$Leaf_Base[df$Leaf_Base == '11'] <- 'Obtuse'
df$Leaf_Base[df$Leaf_Base == '12'] <- 'Cleft'

df %>% head(5)
medlea <- df
#To save as a rda file
save(medlea,file = "data/medlea.rda")

