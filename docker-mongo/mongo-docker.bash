# Baixando a imagem do mongo e criando um container com base nessa imagem
docker pull mongo
docker run --name mongodb --restart=always -d -p 27017:27017 mongo mongod --auth

# Entrando no bash do container para setar o usuario
docker exec -i -t mongodb bash

# Conectando ao mongodb
mongo

# Criando admin e usuario 
# use admin
# db.createUser({user:"admin",pwd:"graphqltest",roles:[{role:"root",db:"admin"}]})
mongo admin --eval 'db.createUser({user:"admin",pwd:"graphqltest",roles:[{role:"root",db:"admin"}]})'

# Saindo do shell do mongo
exit
# Saindo do container
exit

# Conectando ao banco
mongo -u "admin" -p "graphqltest" localhost --authenticationDatabase "admin"