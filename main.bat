@echo off

set home="%dir%"
set /p pname="Name your new problem: "
mkdir %home%\%pname%
cd %home%\%pname%
echo Problem folder created. Please import your main.cpp as a source code, and press any key to continue...
pause > nul
:fnf.loop
    if [!exist main.cpp]
    (
        echo Source file is not found! Please import it, and try again...
        pause > nul
        goto fnf.loop
    )
    else goto fnf.break
:fnf.break
set /p tcount="Input tests count: "
for /l in (1,1,n) do
(
    
)