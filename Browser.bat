
@ECHO OFF

REM colocar codificação como:
REM 		codigo Caracteres
REM 		Europa ocidental
REM 		OEM 850
::CODEPAGE=850
@echo off
chcp 850 >nul
echo Caracteres acentuados: áéíóúãõ


REM Para o arranque automatico
REM Tecla Windows + R -->
REM %appdata%\Microsoft\windows\start menu\programs\startup

TITLE Nelas ZEN TOOL * v0.0 * - 12C
mode con: cols=64 lines=35
color 1B

:BEGIN


echo   -------------------------------------------------- 
echo   (^%date%)     HTML       (%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%)
echo   -------------------------------------------------- 
echo.
ECHO              1. SYNC BROWSER
ECHO              2. gIT HUB cOUSERA
ECHO              3. Validador HTML
ECHO              4. VAZIO
ECHO              5. OUTRO MENÚ - VAZIO
ECHO              6. OUTRO MENÚ - CHEIO
ECHO              7. SAIR
ECHO.

CHOICE /M ------------ /C:1234567
SET /A Numero_Begins+=1

If ERRORLEVEL ==7 GOTO SIX
If ERRORLEVEL ==6 GOTO FIVE
If ERRORLEVEL ==5 GOTO FIVE_EMPTY
If ERRORLEVEL ==4 GOTO FOUR
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE


:SIX
EXIT
GOTO BEGIN

:ONE
ECHO =============================================================
REM start chrome https://sites.google.com/aenelas.edu.pt/12c/orientacao_a_objetos
start cmd /k browser-sync start --server --directory --files "*"
rem start chrome https://github.com/jhu-ep-coursera/fullstack-course4
ECHO =============================================================
ECHO.
GOTO BEGIN

:TWO
START CHROME https://github.com/jhu-ep-coursera/fullstack-course4
GOTO BEGIN

ECHO =============================================================
echo "Digite o terceiro octeto do IP:"
set /p terceiro=

echo "Digite o quarto octeto do IP:"
set /p quarto=

set ip=192.168.%terceiro%.%quarto%

echo "O endereco IP completo -- %ip%
echo "Digite o teu número:"
set /p numero=

start explorer \\%ip%\Aluno%numero%
echo Insere credenciais e carrega numa tecla DEPOIS das credenciais inseridas
pause
subst x: \\%ip%\Aluno%numero%
start explorer x:

ECHO =============================================================
ECHO       		NOVA DRIVE X NO TEU EXPLORADOR
ECHO =============================================================
GOTO BEGIN

:THREE
ECHO =============================================================
rem start chrome https://sites.google.com/d/1RNDx-ve0g4-7D2rGEn3G8R62_TlcFBkF/p/1H8GhEOQI89dsj3zA0qoC2SnE8tKChDgh/edit
start chrome https://validator.w3.org/
ECHO =============================================================
ECHO.
GOTO BEGIN

:FOUR
ECHO =============================================================
start chrome https://pedrooliveirabunker.github.io/coursera-test/
ECHO =============================================================
GOTO BEGIN

:FIVE_EMPTY
ECHO.
ECHO           ############## OUTRO MENU ############### 
ECHO           #                                       #
ECHO           #    1. VAZIO                           #
ECHO           #                                       #
ECHO           #    2. VAZIO                           #
ECHO           #                                       #
ECHO           #    3. VAZIO                           #
ECHO           #                                       #
ECHO           #    4. VAZIO                           #
ECHO           #                                       #
ECHO           #    5. VAZIO                           #
ECHO           #                                       #
ECHO           #    6. VAZIO                           #
ECHO           #                                       #
ECHO           #    7. VAZIO                           #
ECHO           #                                       #
ECHO           #    8. VAZIO                           #
ECHO           #                                       #
ECHO           #    9. Exit to Begin                   #
ECHO           #                                       #
ECHO           ######################################### 
ECHO.  
ECHO.
choice /C 123456789 /M "Please select what you need:"
if %errorlevel%== 1 goto VAZIO
if %errorlevel%== 2 goto VAZIO
if %errorlevel%== 3 goto VAZIO
if %errorlevel%== 4 goto VAZIO
if %errorlevel%== 5 goto VAZIO
if %errorlevel%== 6 goto VAZIO
if %errorlevel%== 7 goto VAZIO
if %errorlevel%== 8 goto VAZIO
if %errorlevel%== 9 goto BEGIN

:FIVE
ECHO.
ECHO           ############### SERVLET'S ############### 
ECHO           #                                       #
ECHO           #           GENERIC SERVLET             #
ECHO           #    1. HelloServlet ------ DIRETO      #
ECHO           #                                       #
ECHO           #    2. EvenOddServlet ---- DIRETO      #
ECHO           #                                       #
ECHO           #    3. PalindromeServlet - DIRETO      #
ECHO           #                                       #
ECHO           #    4. PalindromeServlet - FORM        #
ECHO           #                                       #
ECHO           #             HTTP SERVLET              #
ECHO           #    5. EvenRangeServlet -- DIRETO      #
ECHO           #                                       #
ECHO           #    6. NameLenghtServlet - DIRETO      #
ECHO           #                                       #
ECHO           #    7. NameLenghtServlet - FORM        #
ECHO           #                                       #
ECHO           #    8. SERVELET JDBC                   #
ECHO           #                                       #
ECHO           #    9. Exit to Begin                   #
ECHO           #                                       #
ECHO           ######################################### 
ECHO.  
ECHO.
choice /C 123456789 /M "Please select what you need:"
if %errorlevel%== 1 goto 5_1
if %errorlevel%== 2 goto 5_2
if %errorlevel%== 3 goto 5_3
if %errorlevel%== 4 goto 5_4
if %errorlevel%== 5 goto 5_5
if %errorlevel%== 6 goto 5_6
if %errorlevel%== 7 goto 5_7
if %errorlevel%== 8 goto 5_8
if %errorlevel%== 9 goto BEGIN

:5_1
REM HelloServlet - DIRETO
ECHO =============================================================
ECHO                       Site 
start chrome http://localhost:8080/servlet-jsp-playground/hello-servlet
ECHO =============================================================
goto FIVE

:5_2
REM EvenOddServlet - DIRETO
ECHO =============================================================
echo ╔════════════════════════════════════╗
echo ║    Digita o numero [PAR/IMPAR]:    ║
echo ╚════════════════════════════════════╝
set /p par_impar=
rem ╔═══╦═══╗
rem ║	║	║
rem ╠═══╬═══╣
rem ║	║	║
rem ╚═══╩═══╝
set /a resultado=%par_impar% %% 2 
if %resultado%==0 (
   	echo O numero %par_impar% = PAR
	
) else (
    echo O numero %par_impar% = IMPAR
)

start chrome http://localhost:8080/servlet-jsp-playground/even-odd?number=%par_impar%

ECHO.
GOTO FIVE

:5_3
REM PalindromeServlet - DIRETO
echo ╔══════════════════════╗
echo ║    Digita um nome    ║
echo ╚══════════════════════╝
set /p nome=
start chrome http://localhost:8080/servlet-jsp-playground/palindrome-servlet?name=%nome%
GOTO FIVE

:5_4
REM PalindromeServlet - FORM
start chrome http://localhost:8080/servlet-jsp-playground/Palindrome.html
GOTO FIVE

:5_5
REM EvenRangeServlet - DIRETO
echo ╔════════════════════╗
echo ║  Digita o inicio   ║
echo ╚════════════════════╝
set /p inicio=
echo ╔════════════════════╗
echo ║    Digita o fim    ║
echo ╚════════════════════╝
set /p fim=
start chrome "http://localhost:8080/servlet-jsp-playground/even-range-servlet?start=%inicio%&end=%fim%"
GOTO FIVE

:5_6
REM NameLenghtServlet - DIRETO 
echo ╔═════════════════════╗
echo ║   Digita um nome    ║
echo ╚═════════════════════╝
set /p nome=
start chrome http://localhost:8080/servlet-jsp-playground/palindrome-servlet?name=%nome%
GOTO FIVE

:5_7
REM NameLenghtServlet - FORM
start chrome http://localhost:8080/servlet-jsp-playground/name-length.html
GOTO FIVE

:VAZIO
ECHO =============================================================
ECHO                       VAZIO
ECHO =============================================================
ECHO.
GOTO BEGIN

:5_8
ECHO.
ECHO           ############ SERLVLET JDBC ############## 
ECHO           #                                       #
ECHO           #    1. Save Movie - FORM               #
ECHO           #                                       #
ECHO           #    2. Get Movie - DIRETO URL          #
ECHO           #                                       #
ECHO           #    3. VAZIO                           #
ECHO           #                                       #
ECHO           #    4. VAZIO                           #
ECHO           #                                       #
ECHO           #    5. VAZIO                           #
ECHO           #                                       #
ECHO           #    6. VAZIO                           #
ECHO           #                                       #
ECHO           #    7. VAZIO                           #
ECHO           #                                       #
ECHO           #    8. VAZIO                           #
ECHO           #                                       #
ECHO           #    9. Exit to Begin                   #
ECHO           #                                       #
ECHO           ######################################### 
ECHO.  
ECHO.
choice /C 123456789 /M "Please select what you need:"
if %errorlevel%== 1 goto 5_8_1
if %errorlevel%== 2 goto 5_8_2
if %errorlevel%== 3 goto VAZIO
if %errorlevel%== 4 goto VAZIO
if %errorlevel%== 5 goto VAZIO
if %errorlevel%== 6 goto VAZIO
if %errorlevel%== 7 goto VAZIO
if %errorlevel%== 8 goto VAZIO
if %errorlevel%== 9 goto FIVE

:5_8_1
start chrome http://localhost:8080/servlet-jsp-playground/save-movie.html
GOTO 5_8

:5_8_2


echo ╔════════════════════════════════════╗
echo ║  Digita um video para pesquisar:   ║
echo ╚════════════════════════════════════╝
set /p numero=

start chrome http://localhost:8080/servlet-jsp-playground/fetch-movie?id=%numero%
GOTO 5_8