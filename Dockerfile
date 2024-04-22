# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51P8E5aSCNvjYiXHKiey87q1CgwulMq0WUWvuHIWicLTPHXCwhkUDUGzlR0EwSyC22miPmEyMqo9q0FEYyqynMEqc00RIxBKeIW" \
SECRET_KEY="pk_test_51P8E5aSCNvjYiXHKiey87q1CgwulMq0WUWvuHIWicLTPHXCwhkUDUGzlR0EwSyC22miPmEyMqo9q0FEYyqynMEqc00RIxBKeIW"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
