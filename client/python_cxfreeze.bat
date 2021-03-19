@echo off
rmdir /S /Q "build/"
mkdir "build/"
rmdir /S /Q "release/bin/"
mkdir "release/bin/"
mkdir "release/bin/windows"
copy /Y "bin\windows\nano-work-server.exe" "release\bin\windows\nano-work-server.exe"
python exe_package.py build