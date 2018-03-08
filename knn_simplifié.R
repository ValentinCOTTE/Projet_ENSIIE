target_factor<-as.factor(train_simp_na$target)

train_without_target<-train_simp_na
train_without_target$target <- NULL

train_coupe_50000<-train_without_target[1:50000,]
test_coupe_50000<-test_simp_na[1:50000,]
target_factor_coupe_50000<-target_factor[1:50000]

train_matrix<-data.matrix(train_coupe_50000)
test_matrix<-data.matrix(test_coupe_50000)


target_test_prediction<-knn(train = train_coupe_50000,test = test_coupe_50000, cl=target_factor_coupe_50000 , k=1, l=0, prob = FALSE, use.all = TRUE)
