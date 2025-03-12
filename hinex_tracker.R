if (!require("tidyverse")) {
  
  install.packages("tidyverse")
  
}

if (!require("scholar")) {
  
  install.packages("scholar")
  
}


library(tidyverse)
library(scholar)



my_prof <- scholar::get_profile(id = "7lpWzvcAAAAJ&hl")


cites <- my_prof$total_cites
hindex <- my_prof$h_index

write_lines(cites, file = "assets/perfs/citations.txt", append = FALSE)
write_lines(hindex, file = "assets/perfs/hindex.txt", append = FALSE)
