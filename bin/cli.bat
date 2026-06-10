@echo off
setlocal

where perl >nul 2>&1 || (
    echo No Perl on the system >&2
    exit /b 1
)

set cwd=%~dp0
set libexec=%cwd%\..\libexec\cli
if not exist %libexec% (
    echo CLI program not found >&2
    exit /b 1
)

perl %libexec% %*
