#!/bin/bash

echo "Criando Diretorios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de suaários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários & Adicionando aos Grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM 
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando permissões  dos diretórios..."
# Comando "chown" o dono do diretorio  é o "root" e grupo de permissão sendo associado"GRP_ADM"  ao diretorio "/adm"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Dando permissão para os uauários"
# Permissão do root "7"
# Permissão do /adm /ven /sec "7" -> por serem donas do diretorio 
# Permissão do demais usua´rios "0 "

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
 
echo "Fim..."


