

print(system.time(readLines("http://www.jhsph.edu")))

hilbert <- function(n) {
  i <- 1:n
  1 / outer(i-1, i, "+")
}

x <- hilbert(10000)
print(system.time(x))

set.seed(1)
rpois(5, 2)