!#/bin/bash

echo "Creating users and groups, please wait..."

# Creating groups

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

# Creating directories

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

# Setting directory permissions

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

chmod 777 /publico

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec

# Creating users

userdd carlos -c "Carlos" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd maria -c "Maria" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd joao -c "João" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123)

userdd debora -c "Débora" -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd sebastiana -c "Sebastiana" -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd roberto -c "Roberto" -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123)

userdd josefina -c "Josefine" -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd amanda -c "Amanda" -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123)
userdd rogerio -c "Rogerio" -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123)

# Enabling password change

passwd -e carlos
passwd -e maria
passwd -e joao
passwd -e debora
passwd -e sebastiana
passwd -e roberto
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Users and groups created successfully!"
