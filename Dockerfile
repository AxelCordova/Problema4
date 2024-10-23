# Usamos una imagen base de Node.js
FROM node:14

# Creamos una carpeta dentro del contenedor para guardar la aplicación
WORKDIR /app

# Copiamos el archivo package.json y package-lock.json (que tienen las dependencias) a la carpeta del contenedor
COPY package*.json ./

# Instalamos las dependencias de Node.js
RUN npm install

# Copiamos el código de la aplicación (tu proyecto Node.js)
COPY . .

# Exponemos el puerto 3000 (el que usará nuestra aplicación)
EXPOSE 3000

# Comando para iniciar la aplicación cuando el contenedor esté funcionando
CMD ["npm", "start"]