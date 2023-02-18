#!/bin/bash

echo "Criando diretorios"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios"

groupadd GROUP_ADM
groupadd GROUP_VEN
groupadd GROUP_SEC

echo "Criando usuarios e associando ao seu devido grupo"

useradd lssndr -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_ADM
useradd souza -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_ADM

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_VEN
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_VEN
useradd neymar -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_VEN

useradd sabrina -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_SEC
useradd pato -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_SEC
useradd barney -m -s /bin/bash -p $(openssl passwd -crypt SenhaForte123) -G GROUP_SEC

echo "Especificando permissões dos diretorios"

chown root:GROUP_ADM /adm
chown root:GROUP_VEN /ven
chown root:GROUP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

