#!/bin/bash

echo "Criando Diretorios"

mkdir /ti
mkdir /diretoria
mkdir /rh
mkdir /tesouraria
mkdir /mkt

echo "Grupo de permissoes"

groupadd GRP_TI
groupadd GRP_DIRETORIA 
groupadd GRP_RH
groupadd GRP_TESOURARIA
groupadd GRP_MKT

echo "criação de usuários"

useradd paulo -c "Paulo Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)

useradd rita -c "Rita Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123) 
useradd alexandre -c "Alexandre Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123) 
useradd bianca -c "Bianca Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd marcos -c "marcos Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)



useradd marcia -c "Marcia Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd nalva -c "nalva Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)


useradd jorge -c "Jorge Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd clara -c "clara Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd aline -c "aline Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd vinicius -c "Vinicius Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)

useradd camila -c "Camila Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)
useradd carla -c "Carla Silva" -m -s /bin/bash -p $(openssl passwd -6 Pass@123)

echo  "Atribuindo permissões aos Diretorios"

chown root:GRP_TI /ti
chown root:GRP_DIRETORIA /diretoria
chown root:GRP_RH /rh
chown root:GRP_TESOURARIA /tesouraria
chown root:GRP_MKT /mkt

echo "Atribuindo permissões aos usuários"

usermod -aG GRP_TI paulo 
usermod -aG GRP_DIRETORIA rita
usermod -aG GRP_DIRETORIA alexandre
usermod -aG GRP_DIRETORIA bianca
usermod -aG GRP_DIRETORIA  marcos
usermod -aG GRP_RH marcia 
usermod -aG GRP_RH nalva
usermod -aG GRP_TESOURARIA jorge
usermod -aG GRP_TESOURARIA clara
usermod -aG GRP_TESOURARIA aline
usermod -aG GRP_TESOURARIA vinicius
usermod -aG GRP_MKT camila
usermod -aG GRP_MKT carla

echo "Permissionando Diretorios aos usuários" 

chmod 770 /ti
chmod 770 /diretoria 
chmod 770 /rh
chmod 770 /tesouraria
chmod 770 /mkt

