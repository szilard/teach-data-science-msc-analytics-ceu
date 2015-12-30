
d <- iris[,-5]

dd <- dist(d)
hc <- hclust(dd, method = "average")
dend <- as.dendrogram(hc)
plot(dend)
rm(dd, hc, dend)

dend <- as.dendrogram(hclust(dist(d), method = "average"))
plot(dend)

#library(dplyr)
library(magrittr)
dend <- d %>% dist %>% hclust(method = "average") %>% as.dendrogram
plot(dend)


library(dendextend)

dend %>% set("labels", NA) %>% plot
dend %>% set("labels", NA) %>% set("branches_k_color", k = 3) %>% plot
dend %>% set("labels", NA) %>% set("branches_k_color", k = 4) %>% plot

dend %>% set("labels", NA) %>% hang.dendrogram(0) %>% plot



# for this problem we know the "true" clusters
c0 <- iris[,5]

dend %>% set("labels", NA) %>% 
  set("leaves_pch", 1) %>% set("leaves_cex", 0.4) %>%  
  set("leaves_col", as.numeric(c0)) %>% hang.dendrogram(0) %>% plot


for (m in c("average","complete","single")) {
d %>% dist %>% hclust(method = m) %>% as.dendrogram %>% 
  set("labels", NA) %>% 
  set("leaves_pch", 1) %>% set("leaves_cex", 0.4) %>%  
  set("leaves_col", as.numeric(c0)) %>% hang.dendrogram(0) %>% plot(main = m)
}  
  
# more analysis
# https://cran.r-project.org/web/packages/dendextend/vignettes/Cluster_Analysis.html
  
