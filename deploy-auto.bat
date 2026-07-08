@echo off
chcp 65001 >nul
cd /d "D:\Coast House\Coast House\site-coast-house"
echo ============================================
echo   Publicando COAST HOUSE no Cloudflare Pages
echo ============================================
echo.
echo (1/2) Criando o projeto coast-house (se ainda nao existir)...
call npx -y wrangler pages project create coast-house --production-branch main
echo.
echo (2/2) Enviando os arquivos...
call npx -y wrangler pages deploy . --project-name coast-house --branch main --commit-dirty=true
echo.
echo ================= FIM DO DEPLOY =================
echo   Endereco final: https://coast-house.pages.dev
pause
