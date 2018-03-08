#on fait subir le même traitement à Test qu'à Train

test_20 <- test_simple
test_20$ps_car_03_cat <- NULL
test_20$ps_car_05_cat <- NULL
test_20$ps_reg_03 <- NULL

#moyenne

test_moy <- test_20
rm(test_20)


test_moy$ps_ind_02_cat[test_moy$ps_ind_02_cat < 0] <- mean(test_moy$ps_ind_02_cat[test_moy$ps_ind_02_cat > -1])
table(test_moy$ps_ind_02_cat)

test_moy$ps_ind_04_cat[test_moy$ps_ind_04_cat < 0] <- mean(test_moy$ps_ind_04_cat[test_moy$ps_ind_04_cat > -1])
table(test_moy$ps_ind_04_cat)

test_moy$ps_ind_05_cat[test_moy$ps_ind_05_cat < 0] <- mean(test_moy$ps_ind_05_cat[test_moy$ps_ind_05_cat > -1])
table(test_moy$ps_ind_05_cat)

test_moy$ps_car_01_cat[test_moy$ps_car_01_cat < 0] <- mean(test_moy$ps_car_01_cat[test_moy$ps_car_01_cat > -1])
table(test_moy$ps_car_01_cat)

test_moy$ps_car_02_cat[test_moy$ps_car_02_cat < 0] <- mean(test_moy$ps_car_02_cat[test_moy$ps_car_02_cat > -1])
table(test_moy$ps_car_02_cat)

test_moy$ps_car_07_cat[test_moy$ps_car_07_cat < 0] <- mean(test_moy$ps_car_07_cat[test_moy$ps_car_07_cat > -1])
table(test_moy$ps_car_07_cat)

test_moy$ps_car_09_cat[test_moy$ps_car_09_cat < 0] <- mean(test_moy$ps_car_09_cat[test_moy$ps_car_09_cat > -1])
table(test_moy$ps_car_09_cat)

test_moy$ps_car_11[test_moy$ps_car_11 < 0] <- mean(test_moy$ps_car_11[test_moy$ps_car_11 > -1])
table(test_moy$ps_car_11)

test_moy$ps_car_14[test_moy$ps_car_14 < 0] <- mean(test_moy$ps_car_14[test_moy$ps_car_14 > -1])
table(test_moy$ps_car_14)

test_moy$ps_car_12[test_moy$ps_car_12 < 0] <- mean(test_moy$ps_car_12[test_moy$ps_car_12 > -1])
table(test_moy$ps_car_12)

test_simp_na <- test_moy
rm(test_simple)
rm(test_moy)