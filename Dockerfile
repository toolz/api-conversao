# imagem base, testada e a funcionar OK
FROM node:16-alpine

# diretório do serviço
WORKDIR /app

# copiar packages
COPY package*.json .

# instalar packages
RUN npm install

# copiar ficheiros para o serviço
COPY swagger.yaml .
COPY index.js .

# executar o serviço
CMD ["node", "index.js"]

