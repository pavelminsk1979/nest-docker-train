FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
CMD ["yarn", "start:dev"]

# для создания образа команда в терминале
# docker build -t name-image1 .
# !!!ВНИМАНИЕ ОБЯЗАТЕЛЬНО В КОНЦЕ КОМАНДЫ ПРОБЕЛ И ТОЧКА
#
#из образа я создать контейнер
# docker run -d -p 3010:3000  --name container1 name-image1
# контейнер сразу запущен
# в браузере можно на порт 3010 делать запрос и данно приложение
# выдаст ответ Hello World Ха-Ха!