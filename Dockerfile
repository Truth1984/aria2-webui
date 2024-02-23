FROM node:16-alpine
ENV TZ=Asia/Shanghai

WORKDIR /app

COPY . .
# RUN rm -rf node_modules
# RUN npm config set registry https://registry.npm.taobao.org/
# RUN npm install --only=production && npm cache clean --force
RUN mv node_modules $HOME/.node_modules
RUN echo "export NODE_PATH=$HOME/.node_modules" >> $HOME/.bashrc

EXPOSE 8000

CMD ["npm", "run", "start"]
