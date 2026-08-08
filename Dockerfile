# Stage 1: Build & Publish
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Copy project file and restore NuGet packages
COPY ["MyApi.csproj", "./"]
RUN dotnet restore "MyApi.csproj"

# Copy source code and publish
COPY . .
RUN dotnet publish "MyApi.csproj" -c Release -o /app/publish --no-restore

# Stage 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app

# Copy published application
COPY --from=build /app/publish .

# Container port
EXPOSE 8080

ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "MyApi.dll"]