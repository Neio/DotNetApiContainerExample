FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build
WORKDIR /app

COPY . ./

RUN dotnet publish "DotNetApiContainerExample.csproj" -c Release -o /app/publish \
    --sc -r linux-musl-x64 /p:ContainerFamily=alpine
    #/p:PublishTrimmed=true \
    #/p:TrimMode=Link 
    #\
    #/p:PublishSingleFile=true

#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
FROM alpine:3.19.0
RUN apk add --no-cache \ 
    openssh libunwind \
    nghttp2-libs libidn krb5-libs libuuid lttng-ust zlib \
    libstdc++ libintl \
    icu

WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["./DotNetApiContainerExample", "--urls", "http://0.0.0.0:80"]