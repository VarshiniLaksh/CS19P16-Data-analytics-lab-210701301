data(iris)
iris_data <- iris[, -5]

iris_scaled <- scale(iris_data)
distance_matrix <- dist(iris_scaled, method = "euclidean")
hc_complete <- hclust(distance_matrix, method = "complete")

plot(hc_complete, main = "Hierarchical Clustering Dendrogram", xlab = "", sub = "", cex = 0.6)
clusters <- cutree(hc_complete, k = 3)
print(clusters)

iris$Cluster <- as.factor(clusters)
head(iris)
