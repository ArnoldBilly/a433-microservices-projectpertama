# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container ke /app
WORKDIR /app

# Menyalin seluruh source code dari host ke working directory container
COPY . .

# Mengatur environment variable agar aplikasi berjalan dalam mode production
ENV NODE_ENV=production
# Mengatur nama host database yang digunakan aplikasi (merujuk ke service item-db)
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production && npm run build

# Memberitahu Docker bahwa container menggunakan port 8080
EXPOSE 8080

# Menjalankan server saat container diluncurkan dengan perintah npm start
CMD ["npm", "start"]
