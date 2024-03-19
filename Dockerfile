FROM willh/mssql-server-windows-developer:1809

RUN Invoke-WebRequest -Uri "https://download.visualstudio.microsoft.com/download/pr/9b3cbb1c-3368-4a5a-a899-b1c6ec5c0c3e/cb4de75dd805113129a7f903d125e4b0/dotnet-sdk-6.0.415-win-x64.exe" -OutFile dotnet-sdk-installer.exe; \
    Start-Process dotnet-sdk-installer.exe -ArgumentList '/quiet', '/norestart' -NoNewWindow -Wait; \
    Remove-Item -Path dotnet-sdk-installer.exe

RUN dotnet tool install --global microsoft.sqlpackage