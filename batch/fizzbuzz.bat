@echo off
for /l %%i in (1,1,100) do (
    set /a mod15=%%i %% 15
    set /a mod3=%%i %% 3
    set /a mod5=%%i %% 5
    if !mod15! equ 0 (
        echo FizzBuzz
    ) else if !mod3! equ 0 (
        echo Fizz
    ) else if !mod5! equ 0 (
        echo Buzz
    ) else (
        echo %%i
    )
)
