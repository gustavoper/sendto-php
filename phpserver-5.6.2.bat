explorer http://localhost:8888

cd C:\PHP\php-5.6.2


rem check if arg is file or dir
if exist "%~1\" (
  php -S localhost:8888 -t "%~1"
) else (
  php -S localhost:8888 -t "%~dp1"
)