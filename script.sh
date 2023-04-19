echo "Atualizando Ubuntu"
sudo apt-get update
echo "Instalando o GitHub"
sudo apt-get install git
echo "Cadastrar novo usuário - Nome"
git config --global user.name "Sebastião Regi"
echo "Cadastrar novo usuário - E-mail" 
git config --global user.email "swillian2009@gmail.com.br"
echo "Verificando versão do git instalada"
git --version