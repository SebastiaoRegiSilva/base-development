echo "Atualizando Ubuntu"
sudo apt-get update
echo "Instalando o GitHub!"
sudo apt-get install git

#Input nome!
echo "Cadastrar novo usuário - Nome"
read name
git config --global user.name "$name"

#Input email!
echo "Cadastrar novo usuário - E-mail"
read email 
git config --global user.email "$email"

#Verificar versão do GitHub!
echo "Verificando versão do git instalada"
git --version

#Instalação da chave SSH.
ssh-keygen -t ed25519 -C "$email"
#Observação: se estiver usando um sistema 
#herdado que não dá suporte ao algoritmo Ed25519, use: ssh-keygen -t rsa -b 4096 -C "$email"
#Agente que gerencia as chaves.
eval "$(ssh-agent -s)"
#Adicionar a chave privada ao agente SSh. !!Observar linha 23!!
ssh-add ~/.ssh/id_ed25519
#Copiar o conteúdo do arquivo id_ed25519.pub e colar no GitHUB.
cat ~/.ssh/id_ed25519.pub

#Testar altenticação.
ssh -T git@github.com
