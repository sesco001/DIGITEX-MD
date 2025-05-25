FROM node:lts-buster
RUN git clone https://github.com/Sesco001/DIGITEX-MD/root/DIGITEX-MD
WORKDIR /root/DIGITEX-MD
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
