date = "2015-10-08 16:00"
caption_header = "Densityplot with groups"
caption = ""

# packages: load and if needed install
pkg <- c("datasets", "ggplot2")
for(i in seq_along(pkg)) {
  if(!require(pkg[i], character.only = TRUE)) {
    install.packages(pkg[i])
    library(pkg[i], character.only = TRUE)
  }
}

data.frame(A = rbinom(n, 1, 0.9),
           B = rbinom(n, 1, 0.7),
           C = rbinom(n, 1, 0.5),
           D = rbinom(n, 1, 0.3),
           E = rbinom(n, 1, 0.1)
)
# densityplot
data(iris)
p <-
  ggplot(iris) + aes(x=Sepal.Length, fill=cut_interval(Petal.Length, n = 5)) +
  geom_density(alpha=0.2) + theme_minimal()

plot(p)
