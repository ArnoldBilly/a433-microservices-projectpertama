# 1. Membuat Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format Docker Hub (<username>/item-app:v1)
docker tag item-app:v1 avtario19/dicoding-itemapp:v1

# 4. Login ke Docker Hub via Terminal
docker login

# 5. Mengunggah image ke Docker Hub
docker push avtario19/dicoding-itemapp:v1
