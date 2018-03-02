FROM autechr3/dotnetnode:dotnet-2.0-node-6.5

RUN apt-get update && apt-get install -y --no-install-recommends xsltproc

COPY . /build

WORKDIR /build

RUN dotnet restore

RUN npm install

