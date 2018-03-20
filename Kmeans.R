install.packages('class', dependencies = T)

library('class')

head(iris)

summary(iris)

amostra1 = sample(2,150, replace = T, prob=c(0.7, 0.3))

iristreino = iris[amostra1==1,]
classificador = iris[amostra1==2,]

dim(iristreino)
dim(classificador)

previsao = knn(iristreino[,1:4], classificador[,1:4], iristreino[,5], k=3 )

table(classificador[,5], previsao)
