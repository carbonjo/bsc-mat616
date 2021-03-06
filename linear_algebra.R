# Add Vectors
v1 <- c(x=1,y=3)
v2 <- c(x=2,y=1)
v3 <- v1 + v2
sz <- c(0,max(v1,v2,v3)+1)
jpeg('~/Documents/school/MAT-616/images/2d_vector_add.jpg')
plot(NA, xlim=size, ylim=size, xlab="x", ylab="y")
grid()
arrows(0,0,v1['x'],v1['y'],col="red",lwd=2)
arrows(0,0,v2['x'],v2['y'],col="green",lwd=2)
arrows(0,0,v3['x'],v3['y'],col="blue",lwd=2)
arrows(v1['x'],v1['y'],v3['x'],v3['y'],col="green",code=0,lwd=2,lty=2)
arrows(v2['x'],v2['y'],v3['x'],v3['y'],col="red",code=0,lwd=2,lty=2)
legend(3.5,5,legend=c("v1","v2","v3"),col=c("red","green","blue"),lty=c(1,1,1),lwd=c(2,2,2))
dev.off()

# Scale vectors
v1 <- c(x=2,y=1)
s1 <- 2
v2 <- s1*v1
sz <- c(0,max(v1,v2)+1)
jpeg('~/Documents/school/MAT-616/images/2d_scalar_mult.jpg')
plot(NA, xlim=size, ylim=size, xlab="x", ylab="y")
grid()
arrows(0,0,v1['x'],v1['y'],col="black",lwd=6)
arrows(0,0,v2['x'],v2['y'],col="red",lwd=2)
legend(2.5,4.5,legend=c("v1","v2 (s1*v1)"),col=c("black","red"),lty=c(1,1),lwd=c(6,2))
dev.off()

# Graph an identity matrix
vx <- c(x=1,y=0)
vy <- c(x=0,y=1)
I <- cbind(vx,vy)
#jpeg('~/Documents/school/MAT-616/images/identity.jpg')
plot(NA, xlim=c(-2,2), ylim=c(-2,2), xlab="x", ylab="y")
grid()
arrows(0,0,vx['x'],vx['y'],col="red",lwd=2)
arrows(0,0,vy['x'],vy['y'],col="green",lwd=2)
legend(0.5,1.5,legend=c("vx","vy"),col=c("red","green"),lty=c(1,1),lwd=c(2,2))
#dev.off()

# graph a symmetric matrix (boring)
v4 <- c(x=2,y=3)
v5 <- c(x=3,y=2)
#jpeg('~/Documents/school/MAT-616/images/identity.jpg')
plot(NA, xlim=c(-4,4), ylim=c(-4,4), xlab="x", ylab="y")
grid()
arrows(0,0,v4['x'],v4['y'],col="red",lwd=2)
arrows(0,0,v5['x'],v5['y'],col="green",lwd=2)
legend(0.5,1.5,legend=c("v4","v5"),col=c("red","green"),lty=c(1,1),lwd=c(2,2))
#dev.off()

# multiply a vector by a matrix
v1 <- c(x=2,y=-0.5)
v2 <- c(x=-2,y=2)
v3 <- c(x=0,y=-1)
B <- cbind(v1,v2)
v4 <- B %*% v3
sz <- max(abs(v1),abs(v2),abs(v3),abs(v4))+1
#jpeg('~/Documents/school/MAT-616/images/matrix_vec_mult.jpg')
plot(NA, xlim=c(-sz,sz), ylim=c(-sz,sz), xlab="x", ylab="y")
grid()
arrows(0,0,B['x','v1'],B['y','v1'],col="red",lwd=4)
arrows(0,0,B['x','v2'],B['y','v2'],col="green",lwd=4)
arrows(0,0,v3['x'],v3['y'],col="blue",lwd=2)
arrows(0,0,v4['x',1],v4['y',1],col="purple",lwd=4)
arrows(0,0,vx['x'],vx['y'],col="red",lwd=2,code=0)
arrows(0,0,vy['x'],vy['y'],col="green",lwd=2,code=0)
legend(0.5,3,legend=c("B[,v1]","B[,v2]","v3","v4 (B*v3)"),
       col=c("red","green","blue","purple"),
       lty=c(1,1,1,1),lwd=c(4,4,2,4))
#dev.off()

# Matrix scaling
A <- cbind(c(x=1,y=-1),c(x=-1,y=2))
s1 <- 2
B <- s1*A
sz <- max(abs(A),abs(B))+1
jpeg('~/Documents/school/MAT-616/images/matrix_scale.jpg')
plot(NA, xlim=c(-sz,sz), ylim=c(-sz,sz), xlab="x", ylab="y")
grid()
arrows(0,0,A['x',1],A['y',1],col="red",lwd=6)
arrows(0,0,A['x',2],A['y',2],col="blue",lwd=6)
arrows(0,0,B['x',1],B['y',1],col="red",lwd=2)
arrows(0,0,B['x',2],B['y',2],col="blue",lwd=2)
legend(0.5,4.5,legend=c("A[,1]","A[,2]","B[,1]","B[,2]"),
       col=c("red","blue","red","blue"),
       lty=c(1,1,1,1),lwd=c(6,6,2,2))
dev.off()

# Matrix addition
A <- cbind(c(x=1,y=-1),c(x=-1,y=2))
B <- cbind(c(x=0,y=-1),c(x=-1,y=0))
C <- A + B
sz <- max(abs(A),abs(B))+1
#jpeg('~/Documents/school/MAT-616/images/matrix_add.jpg')
plot(NA, xlim=c(-sz,sz), ylim=c(-sz,sz), xlab="x", ylab="y")
grid()
arrows(0,0,A['x',1],A['y',1],col="red",lwd=3)
arrows(0,0,A['x',2],A['y',2],col="magenta",lwd=3)
arrows(0,0,B['x',1],B['y',1],col="blue",lwd=3)
arrows(0,0,B['x',2],B['y',2],col="cyan",lwd=3)
arrows(0,0,C['x',1],C['y',1],col="purple",lwd=3)
arrows(0,0,C['x',2],C['y',2],col="green",lwd=3)
legend(1,3,legend=c("A[,1]","A[,2]","B[,1]","B[,2]","C[,1]","C[,2]"),
       col=c("red","magenta","blue","cyan","purple","green"),
       lty=rep(1,6),lwd=rep(2,6))
#dev.off()

# matrix-matrix mult
A <- cbind(c(x=0,y=-1),c(x=-1,y=0))
B <- cbind(c(x=2,y=-1),c(x=-1,y=2))
C <- A %*% B
sz <- max(abs(A),abs(B),abs(C))+1
jpeg('~/Documents/school/MAT-616/images/matrix_mult.jpg')
plot(NA, xlim=c(-sz,sz), ylim=c(-sz,sz), xlab="x", ylab="y")
grid()
arrows(0,0,A['x',1],A['y',1],col="red",lwd=3)
arrows(0,0,A['x',2],A['y',2],col="magenta",lwd=3)
arrows(0,0,B['x',1],B['y',1],col="blue",lwd=3)
arrows(0,0,B['x',2],B['y',2],col="cyan",lwd=3)
arrows(0,0,C['x',1],C['y',1],col="purple",lwd=3)
arrows(0,0,C['x',2],C['y',2],col="green",lwd=3)
legend(1,3,legend=c("A[,1]","A[,2]","B[,1]","B[,2]","C[,1]","C[,2]"),
       col=c("red","magenta","blue","cyan","purple","green"),
       lty=rep(1,6),lwd=rep(2,6))
dev.off()

# transpose matrix
A <- cbind(c(x=3,y=-4),c(x=-1,y=2))
B <- t(A)
sz <- max(abs(A),abs(B))+1
jpeg('~/Documents/school/MAT-616/images/matrix_transp.jpg')
plot(NA, xlim=c(-sz,sz), ylim=c(-sz,sz), xlab="x", ylab="y")
grid()
arrows(0,0,A[1,1],A[2,1],col="red",lwd=3)
arrows(0,0,A[1,2],A[2,2],col="magenta",lwd=3)
arrows(0,0,B[1,1],B[2,1],col="blue",lwd=3)
arrows(0,0,B[1,2],B[2,2],col="cyan",lwd=3)
legend(2.5,4.5,legend=c("A[,1]","A[,2]","B[,1]","B[,2]"),
       col=c("red","magenta","blue","cyan"),
       lty=rep(1,3),lwd=rep(2,3))
dev.off()

# eigen
A <- cbind(c(x=1,y=2),c(x=0,y=3))
Ae <- eigen(A)
sz <- c(  floor(min(A,Ae$vectors,Ae$values[1]*Ae$vectors[,1],Ae$values[2]*Ae$vectors[,2])-1),
        ceiling(max(A,Ae$vectors,Ae$values[1]*Ae$vectors[,1],Ae$values[2]*Ae$vectors[,2])+1))
jpeg('~/Documents/school/MAT-616/images/eigen1.jpg')
plot(x=0,y=0, xlim=sz, ylim=sz, xlab="x", ylab="y")
grid()
arrows(0,0,Ae$vectors[1,1],Ae$vectors[2,1],col="blue",lwd=4)
arrows(0,0,Ae$vectors[1,2],Ae$vectors[2,2],col="purple",lwd=4)
#basis vectors
arrows(0,0,vx['x'],vx['y'],col="red",lwd=2,code=0)
arrows(0,0,vy['x'],vy['y'],col="green",lwd=2,code=0)
legend(2,3.5,legend=c("Ae[,1]","Ae[,2]"),
       col=c("blue","purple"),
       lty=c(1,1),lwd=c(4))
title("Pre-transformed Eigenvectors")
dev.off()
jpeg('~/Documents/school/MAT-616/images/eigen2.jpg')
plot(x=0,y=0, xlim=sz, ylim=sz, xlab="x", ylab="y")
grid()
arrows(0,0,A[1,1],A[2,1],col="red",lwd=6)
arrows(0,0,A[1,2],A[2,2],col="green",lwd=6)
arrows(0,0,Ae$values[1]*Ae$vectors[1,1],Ae$values[1]*Ae$vectors[2,1],col="blue",lwd=2)
arrows(0,0,Ae$values[2]*Ae$vectors[1,2],Ae$values[2]*Ae$vectors[2,2],col="purple",lwd=2)
#basis vectors
legend(2,3.5,legend=c("A[,1]","A[,2]","A*Ae[,1]","A*Ae[,2]"),
       col=c("red","green","blue","purple"),
       lty=rep(1,4),lwd=c(6,6,2,2))
title("Transformed Eigenvectors")
dev.off()

A <- cbind(c(x=3,y=1),c(x=1,y=2))
sz <- c(min(A, A[,1]+A[,2])-1, max(A,A[,1]+A[,2])+1)
jpeg('~/Documents/school/MAT-616/images/det.jpg')
plot(x=0,y=0, xlim=sz, ylim=sz, xlab="x", ylab="y")
grid()
polygon(x=c(0,A['x',1],A['x',1]+A['x',2],A['x',2]),
        y=c(0,A['y',1],A['y',1]+A['y',2],A['y',2]),
        col="cyan")
arrows(0,0,A[1,1],A[2,1],col="red",lwd=4)
arrows(0,0,A[1,2],A[2,2],col="green",lwd=4)
arrows(A[1,1],A[2,1],A['x',1]+A['x',2],A['y',1]+A['y',2],col="green",lwd=3,code=0)
arrows(A[1,2],A[2,2],A['x',1]+A['x',2],A['y',1]+A['y',2],col="red",lwd=3,code=0)
#basis vectors
arrows(0,0,vx['x'],vx['y'],col="red",lwd=2,code=0)
arrows(0,0,vy['x'],vy['y'],col="green",lwd=2,code=0)
arrows(vx['x'],vx['y'],1,1,col="red",lwd=1,code=0)
arrows(vy['x'],vy['y'],1,1,col="green",lwd=1,code=0)
legend(3,5,legend=c("A[,1]","A[,2]","det(A)"),
       col=c("red","green","cyan"),
       lty=c(1,1,1),lwd=c(4,4,10))
text(x=(A['x',1]+A['x',2])/2,y=(A['y',1]+A['y',2])/2,labels=det(A))
dev.off()
