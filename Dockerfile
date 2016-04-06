FROM node:5.10.1

RUN mkdir /app
WORKDIR /app

RUN npm install react react-dom babel-cli babel-preset-react

ADD hello_world.html /app/
ADD src/ /app/src/

RUN node_modules/.bin/babel \
    --presets react \
    --out-dir build \
    src

CMD python -mSimpleHTTPServer 80
