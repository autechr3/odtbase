FROM josephbulger/dotnetnode:1.1.0-sdk-projectjson-6.5.0-node

COPY . /build

WORKDIR /build

RUN dotnet restore

RUN npm install

