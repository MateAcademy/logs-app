# Это инструкции для создания imadge, данный imadge мы базируем на основе node
FROM node

WORKDIR /app

COPY package.json /app

# RUN запускается один раз когда мы строим сам образ
RUN npm install

COPY . .

ENV PORT 4200

EXPOSE $PORT
# EXPOSE какой порт мы используем при запуске приложения
#EXPOSE 3000

CMD ["node", "app.js"]

