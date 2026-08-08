# Stage 1: Build & Publish
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# کپی فایل پروژه و restore کردن پکیج‌ها
COPY ["MyApi.csproj", "./"]
RUN dotnet restore "MyApi.csproj"

# کپی سورس‌کد و publish پروژه
COPY . .
RUN dotnet publish "MyApi.csproj" -c Release -o /app/publish

# Stage 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app

# کپی خروجی مرحله قبل به Runtime
COPY --from=build /app/publish .

# تنظیم پورت پیش‌فرض کانتینر
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "MyApi.dll"]