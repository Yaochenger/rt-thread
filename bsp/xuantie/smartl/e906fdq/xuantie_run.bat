@echo off
cd /d "E:\rt-thread\bsp\xuantie\smartl\e906fdq\qemu"

:: Check required files
if not exist "qemu_run.bat" (
    echo 错误：未找到 qemu_run.bat
    pause
    exit /b 1
)
if not exist "gdb_run.bat" (
    echo 错误：未找到 gdb_run.bat
    pause
    exit /b 1
)

:: Launch QEMU and capture its PID
start "QEMU_Window" cmd /c qemu_run.bat
timeout /t 1 /nobreak >nul
for /f "tokens=2" %%a in ('tasklist /fi "WINDOWTITLE eq QEMU_Window*" /fo list ^| find "PID:"') do set QEMU_PID=%%a

:: Create temporary batch file for GDB
(
    echo @echo off
    echo echo ^[96m/^**[0m
    echo echo ^[96m * Copyright ^(c^) 2006-2025, RT-Thread Development Team^[0m
    echo echo ^[96m *^[0m
    echo echo ^[96m * SPDX-License-Identifier: Apache-2.0^[0m
    echo echo ^[96m *^[0m
    echo echo ^[96m * Change Logs:^[0m
    echo echo ^[96m * Date           Author       Notes^[0m
    echo echo ^[96m * 2025-04-23     Wangshun     first version^[0m
    echo echo ^[96m */^[0m
    echo echo.
    echo call gdb_run.bat
) > gdb_temp.bat

:: Launch GDB and wait for it to close
start /wait "GDB_Window" cmd /c gdb_temp.bat

:: Cleanup
if defined QEMU_PID taskkill /PID %QEMU_PID% /T /F >nul 2>&1
del gdb_temp.bat >nul 2>&1
