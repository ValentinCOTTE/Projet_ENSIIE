#Découpage du tableau de données
train_target1<-subset(train,target==1)            #on prend tout les clients qui ont reclamé une aident

train_target0<-subset(train,target==0)            #on prend les clients qui n'ont pars réclamé d'aide
train_target0<-train_target0[sample(1:573518, 30000, replace=F),]  #puis on en garde 30000 au hasard

train_simple<-rbind.data.frame(train_target1,train_target0)  #on colle ces deux tableaux de données

rm(train_target0)
rm(train_target1)
