# Dockerfile
FROM node:14

# Definir o diretório de trabalho
WORKDIR /usr/src/app
# Copiar arquivos e instalar dependências
COPY package*.json ./
RUN npm install
# Copiar o código
COPY . .
# Expor a porta
EXPOSE 3000
# Comando para iniciar a aplicação
CMD ["node", "app.js"]
