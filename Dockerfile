FROM josephbulger/dotnetnode:1.1.0-sdk-projectjson-6.5.0-node

RUN apt-get update && apt-get install -y --no-install-recommends xsltproc

COPY . /build

WORKDIR /build

RUN dotnet restore

RUN npm config set cache-min 9999999

RUN npm install

