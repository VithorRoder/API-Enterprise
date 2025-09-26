@echo off
title Phoenix API - Servidor
color 0A

echo ============================================
echo   Iniciando Phoenix API (Spring Boot)
echo ============================================

echo.
echo Encerrando processos na porta 8081...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8081') do (
    taskkill /PID %%a /F >nul 2>&1
)

echo.
echo Iniciando a API na porta 8081...
echo (Use CTRL+C para parar manualmente)
echo ============================================

REM Ajuste o caminho do JAR se estiver em outra pasta
java -jar "C:\Users\Servidor-Phoenix\Downloads\drive-download-20250926T170705Z-1-001\api-enterprise\api-enterprise\target\api-enterprise-1.0.0.jar"

pause