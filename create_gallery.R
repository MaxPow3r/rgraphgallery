# put the R-plot code in /R-Plots then run the following
for(i in list.files(file.path(getwd(), "R"), full.names = TRUE)) source(i)

create_posts(
  project.path = getwd(),
  code.path="https://github.com/elenius/rgraphgallery/tree/gh-pages/R-plots"
)
