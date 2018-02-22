#transforme la liste des target en vecteur
targetCol <- unlist(Train["target"], use.names=FALSE)
#ou
targetCol <- Train$target

#moyenne des target
mean(targetCol)#0.03644

#nombre de 1 dans target
length(targetCol[targetCol==1]) #21694
#nombre de 0 dans target
length(targetCol[targetCol==0]) #573518


#moyenne sans avoir les -1 cad NA
mean(Train$ps_ind_02_cat[Train$ps_ind_02_cat>(-1)])

summary(Train$ps_ind_02_cat[Train$ps_ind_02_cat>(-1)])
summary(Train) 



Train %>% ggvis(~ps_ind_01, ~ps_ind_03, fill = ~target) %>% layer_points()

# Percentual division of `Species`
round(prop.table(table(Train)) * 100, digits = 1)

# Division of `Species`
table(Train$ps_car_03_cat)

table(Train$ps_ind_02_cat[Train$ps_ind_02_cat>(-1)])

str(Train)

#alt+c pour commenter

# Handling imbalanced classes As we mentioned above the proportion of records
# with target=1 is far less than target=0. This can lead to a model that has
# great accuracy but does have any added value in practice. Two possible
# strategies to deal with this problem are:
# 
# oversampling records with target=1 undersampling records with target=0
# 
# There are many more strategies of course and MachineLearningMastery.com gives
# a nice overview. As we have a rather large training set, we can go for
# undersampling.

# ps_car_03_cat and ps_car_05_cat have a large proportion of records with missing values. Remove these variables.
# For the other categorical variables with missing values, we can leave the missing value -1 as such.
# ps_reg_03 (continuous) has missing values for 18% of all records. Replace by the mean.
# ps_car_11 (ordinal) has only 5 records with misisng values. Replace by the mode.
# ps_car_12 (continuous) has only 1 records with missing value. Replace by the mean.
# ps_car_14 (continuous) has missing values for 7% of all records. Replace by the mean.

Train %>%
  select(-starts_with("ps_calc"), -ps_ind_10_bin, -ps_ind_11_bin, -ps_car_10_cat, -id) %>%
  mutate_at(vars(ends_with("cat")), funs(as.integer)) %>%
  mutate_at(vars(ends_with("bin")), funs(as.integer)) %>%
  mutate(target = as.integer(target)) %>%
  cor(use="complete.obs", method = "spearman") %>%
  corrplot(type="lower", tl.col = "black",  diag=FALSE)



