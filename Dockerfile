FROM autechr3/dotnetnode:dotnet-2.0-node-6.5

RUN apt-get update && apt-get install -y --no-install-recommends build-essential xsltproc

COPY . /build

WORKDIR /build

RUN dotnet restore

RUN npm install -g local-npm

RUN local-npm

RUN npm set registry http://127.0.0.1:5080

RUN npm install

