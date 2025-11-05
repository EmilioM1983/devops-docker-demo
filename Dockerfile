# Imagen base de Node.js
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY package*.json ./
COPY index.js .

# Instalar dependencias
RUN npm install

# Exponer el puerto
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
