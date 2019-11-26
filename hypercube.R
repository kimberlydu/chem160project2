dimension = c()
for (n in 1:30) {
	dists<-c()
	for (i in 1:10000) {
		P1<-runif(n)
		P2<-runif(n)
		dist<-sqrt(sum((P1-P2)^2))
		dists<-c(dists, dist)
	}
	mean.dist<-mean(dists)
	dimension= c(dimension,mean.dist)
}

png("plot.png")
plot(dimension,main= "Hypercube Distance Plot", xlab="dimensions", ylab="average distance")
x=dev.off()