#on enleves les variable avec plus de 20% de NA
#ps_car_03_cat et ps_car_05_cat 
#on fait la moyenne des autres pour les NA en dessous de 20%

train_20 <- train_simple
train_20$ps_car_03_cat <- NULL
train_20$ps_car_05_cat <- NULL
train_20$ps_reg_03 <- NULL

#moyenne

train_moy <- train_20
rm(train_20)


train_moy$ps_ind_02_cat[train_moy$ps_ind_02_cat < 0] <- mean(train_moy$ps_ind_02_cat[train_moy$ps_ind_02_cat > -1])
table(train_moy$ps_ind_02_cat)

train_moy$ps_ind_04_cat[train_moy$ps_ind_04_cat < 0] <- mean(train_moy$ps_ind_04_cat[train_moy$ps_ind_04_cat > -1])
table(train_moy$ps_ind_04_cat)

train_moy$ps_ind_05_cat[train_moy$ps_ind_05_cat < 0] <- mean(train_moy$ps_ind_05_cat[train_moy$ps_ind_05_cat > -1])
table(train_moy$ps_ind_05_cat)

train_moy$ps_car_01_cat[train_moy$ps_car_01_cat < 0] <- mean(train_moy$ps_car_01_cat[train_moy$ps_car_01_cat > -1])
table(train_moy$ps_car_01_cat)

train_moy$ps_car_02_cat[train_moy$ps_car_02_cat < 0] <- mean(train_moy$ps_car_02_cat[train_moy$ps_car_02_cat > -1])
table(train_moy$ps_car_02_cat)

train_moy$ps_car_07_cat[train_moy$ps_car_07_cat < 0] <- mean(train_moy$ps_car_07_cat[train_moy$ps_car_07_cat > -1])
table(train_moy$ps_car_07_cat)

train_moy$ps_car_09_cat[train_moy$ps_car_09_cat < 0] <- mean(train_moy$ps_car_09_cat[train_moy$ps_car_09_cat > -1])
table(train_moy$ps_car_09_cat)

train_moy$ps_car_11[train_moy$ps_car_11 < 0] <- mean(train_moy$ps_car_11[train_moy$ps_car_11 > -1])
table(train_moy$ps_car_11)

train_moy$ps_car_14[train_moy$ps_car_14 < 0] <- mean(train_moy$ps_car_14[train_moy$ps_car_14 > -1])
table(train_moy$ps_car_14)

train_moy$ps_car_12[train_moy$ps_car_12 < 0] <- mean(train_moy$ps_car_12[train_moy$ps_car_12 > -1])
table(train_moy$ps_car_12)

train_simp_na <- train_moy
rm(train_simple)
rm(train_moy)


