echo -----------------------------------------------
echo dir /a:d /b D:\ 2>nul
dir /a:d /b D:\ 2>nul

echo -----------------------------------------------
echo dir /a:d /b E:\ 2>nul
dir /a:d /b E:\ 2>nul

echo -----------------------------------------------
echo dir /a:d /b C:\
dir /a:d /b C:\

echo -----------------------------------------------
echo dir /a:d /b C:\Libraries
dir /a:d /b C:\Libraries


echo -----------------------------------------------
echo dir /a:d /b C:\Qt
dir /a:d /b C:\Qt

echo -----------------------------------------------
echo dir /a:d /b C:\Qt\5.15.1

dir /a:d /b C:\Qt\5.15.1




echo -----------------------------------------------
echo dir /a:d /b C:\Users
dir /a:d /b C:\Users

echo -----------------------------------------------
echo dir /a:d /b "C:\Documents and Settings"
dir /a:d /b "C:\Documents and Settings"

echo -----------------------------------------------
echo dir /a:d /b C:\WSL
dir /a:d /b C:\WSL





echo -----------------------------------------------
echo dir /a:d /b C:\Tools
dir /a:d /b C:\Tools


echo -----------------------------------------------
echo dir /a:d /b C:\WinDDK
dir /a:d /b C:\WinDDK

echo -----------------------------------------------
echo dir /a:d /b C:\Users\appveyor
dir /a:d /b C:\Users\appveyor

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files (x86)\Java"
dir /a:d /b "C:\Program Files (x86)\Java"

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files\Java"
dir /a:d /b "C:\Program Files\Java"

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files (x86)\Microsoft SDKs"
dir /a:d /b "C:\Program Files (x86)\Microsoft SDKs"


echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files (x86)\Microsoft SDKs\Windows"
dir /a:d /b "C:\Program Files (x86)\Microsoft SDKs\Windows"

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files\Microsoft SDKs"
dir /a:d /b "C:\Program Files\Microsoft SDKs"

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files (x86)"
dir /a:d /b "C:\Program Files (x86)"

echo -----------------------------------------------
echo dir /a:d /b "C:\Program Files" 
dir /a:d /b "C:\Program Files"  




set ROOT_DIRECTORY=%CD%
cd %ROOT_DIRECTORY%
set BOOST_ROOT=C:\Libraries\boost_1_60_0
set BOOST_BUILD_PATH=%BOOST_ROOT%\tools\build

set PATH=C:\msys64\bin;%PATH%
set PATH=C:\msys64\usr\bin;%PATH%
set PATH=C:\msys64\mingw64\bin;%PATH%

REM echo useful info

echo -----------------------------------------------
echo bash --login -c "env"
bash --login -c "env"

echo -----------------------------------------------
echo bash --login -c "echo $PATH"
bash --login -c "echo $PATH"

echo -----------------------------------------------
echo bash --login -c "pacman -Q"
bash --login -c "pacman -Q"

echo -----------------------------------------------

rem bash --login -c "pacman -S --noconfirm python"

rem bash --login -c "curl https://bootstrap.pypa.io/get-pip.py | python"
rem bash --login -c "pip install cram"

::set PATH=%premake_dir%;%PATH%;%BOOST_BUILD_PATH%\src\engine\bin.ntx86
::
::git submodule update --init --recursive
::
::
::if [%PLATFORM%] == [x86] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x86
::if [%PLATFORM%] == [x86] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN32%
::if [%PLATFORM%] == [x86] set CMAKE_GENERATOR=Visual Studio 14 2015    
::    
::
::
::if [%PLATFORM%] == [x64] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" amd64
::if [%PLATFORM%] == [x64] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN64%   
::if [%PLATFORM%] == [x64] set CMAKE_GENERATOR=Visual Studio 14 2015 Win64   


rem wget https://github.com/mlocati/gettext-iconv-windows/releases/download/v0.19.8.1-v1.14/gettext0.19.8.1-iconv1.14-shared-32.zip
    

cmake --version
msbuild /version
which perl.exe
which 7z.exe
which node.exe


::cd /d C:\
::call C:\projects\appveyor-build\npm-install.bat 
::dir "C:\Users\appveyor\AppData\Roaming\npm" 
::treee -d -l 5 --ignore 'node_modules/, .git/, .gitignore'

echo %BOOST_LIBRARYDIR%
set PATH=%QT5%\bin;%PATH%


::if exist "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" ( dir "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" )
::if exist "C:\Program Files\Microsoft SDKs\Windows" ( dir "C:\Program Files\Microsoft SDKs\Windows" )


::rem 7z.exe a -t7z -r qt_5_7_1_msvc2015_64.7z C:\Qt\5.7\msvc2015_64\*
::rem appveyor PushArtifact qt_5_7_1_msvc2015_64.7z
::
::
::rem 7z.exe a -t7z -r qt_5_7_1_msvc2015.7z C:\Qt\5.7\msvc2015\*
::rem appveyor PushArtifact qt_5_7_1_msvc2015.7z
::
::
::
::7z.exe a -t7z -r directx_sdk_june_2010.7z "C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)\*"
::rem appveyor PushArtifact directx_sdk_june_2010.7z
::
::rem 7z.exe a -t7z -r cygwin.7z "C:\cygwin\*"
::rem appveyor PushArtifact cygwin.7z
::
::rem 7z.exe a -t7z -r msys64.7z "C:\msys64\*"
::rem appveyor PushArtifact msys64.7z
::
::rem 7z.exe a -t7z -r mingw-w64.7z "C:\mingw-w64\*"
::rem appveyor PushArtifact mingw-w64.7z
::
::rem 7z.exe a -t7z -r MinGW.7z "C:\MinGW\*"
::rem appveyor PushArtifact MinGW.7z



::7z.exe a -t7z -r WinDDK.7z "C:\WinDDK\*"
::appveyor PushArtifact WinDDK.7z

::7z.exe a -t7z -r MongoDB_4.0.1.7z "C:\MongoDB\*"
::appveyor PushArtifact MongoDB_4.0.1.7z
::
::7z.exe a -t7z -r MySQL_5.7.7z "C:\Program Files (x86)\MySQL\*"
::appveyor PushArtifact MySQL_5.7.7z

::7z.exe a -t7z -r Tools.7z "C:\Tools\*"
::appveyor PushArtifact Tools.7z



:: JDK 




::7z.exe a -t7z -r JDK_1.8_Update_221_(x86).7z "C:\Program Files (x86)\Java\jdk1.8.0\*"
::appveyor PushArtifact JDK_1.8_Update_221_(x86).7z
::
::7z.exe a -t7z -r JDK_1.8_Update_221_(x64).7z "C:\Program Files\Java\jdk1.8.0\*"
::appveyor PushArtifact JDK_1.8_Update_221_(x64).7z

::7z.exe a -t7z -r JDK_14_(x64).7z "C:\Program Files\Java\jdk14\*"
::appveyor PushArtifact JDK_14_(x64).7z
::
::
::7z.exe a -t7z -r "NSIS 3.06.1.7z" "C:\Program Files (x86)\NSIS\*"
::appveyor PushArtifact "NSIS 3.06.1.7z"
::
::7z.exe a -t7z -r "InnoSetup 6.0.2 Unicode.7z" "C:\Program Files (x86)\Inno Setup 6\*"
::appveyor PushArtifact "InnoSetup 6.0.2 Unicode.7z"
::
::
::7z.exe a -t7z -r "OpenSSL 1.1.1h (64-bit).7z" "C:\OpenSSL-v111-Win64\*"
::appveyor PushArtifact "OpenSSL 1.1.1h (64-bit).7z"
::
::7z.exe a -t7z -r "OpenSSL 1.1.1h (32-bit).7z" "C:\OpenSSL-v111-Win32\*"
::appveyor PushArtifact "OpenSSL 1.1.1h (32-bit).7z"
::
::
::7z.exe a -t7z -r "OpenSSL 1.0.2u (64-bit).7z" "C:\OpenSSL-Win64\*"
::appveyor PushArtifact "OpenSSL 1.0.2u (64-bit).7z"
::
::
::7z.exe a -t7z -r "OpenSSL 1.0.2u (32-bit).7z" "C:\OpenSSL-Win32\*"
::appveyor PushArtifact "OpenSSL 1.0.2u (32-bit).7z"

::7z.exe a -t7z -r "boost_1_73_0.7z" "C:\Libraries\boost_1_73_0\*"
::appveyor PushArtifact "boost_1_73_0.7z"
::
::7z.exe a -t7z -r "LLVM 10.0.0 x64.7z" "C:\Program Files\LLVM\*"
::appveyor PushArtifact "LLVM 10.0.0 x64.7z"
::
::7z.exe a -t7z -r "DirectX SDK.7z" "C:\Program Files (x86)\Microsoft DirectX SDK\*"
::appveyor PushArtifact "DirectX SDK.7z"
::
::7z.exe a -t7z -r "vcpkg.7z" "C:\Tools\vcpkg\*"
::appveyor PushArtifact "vcpkg.7z"
::
::7z.exe a -t7z -r "Doxygen.7z" "C:\Tools\Doxygen\*"
::appveyor PushArtifact "Doxygen.7z"
::
::7z.exe a -t7z -r "Graphviz.7z" "C:\Tools\Graphviz\*"
::appveyor PushArtifact "Graphviz.7z"
::
::7z.exe a -t7z -r "WebDriver.7z" "C:\Tools\WebDriver\*"
::appveyor PushArtifact "WebDriver.7z"
::
::7z.exe a -t7z -r "NuGet.7z" "C:\Tools\NuGet\*"
::appveyor PushArtifact "NuGet.7z"
::
::7z.exe a -t7z -r "CMake.7z" "C:\Program Files (x86)\CMake\*"
::appveyor PushArtifact "CMake.7z"


:: Qt
::7z.exe a -t7z -r "Qt_5.15.1_mingw81_32.7z" "C:\Qt\5.15.1\mingw81_32\*"
::appveyor PushArtifact "Qt_5.15.1_mingw81_32.7z"
::
::7z.exe a -t7z -r "Qt_5.15.1_mingw81_64.7z" "C:\Qt\5.15.1\mingw81_64\*"
::appveyor PushArtifact "Qt_5.15.1_mingw81_64.7z"
::
::
::7z.exe a -t7z -r "Qt_5.15.1_msvc2019.7z" "C:\Qt\5.15.1\msvc2019\*"
::appveyor PushArtifact "Qt_5.15.1_msvc2019.7z"

::7z.exe a -t7z -r "Qt_5.15.1_msvc2019_64.7z" "C:\Qt\5.15.1\msvc2019_64\*"
::appveyor PushArtifact "Qt_5.15.1_msvc2019_64.7z"

::7z.exe a -t7z -r "Qt_Examples.7z" "C:\Qt\Examples\" 
::appveyor PushArtifact "Qt_Examples.7z"
::
::7z.exe a -t7z -r "Qt_Tools.7z" "C:\Qt\Tools\" 
::appveyor PushArtifact "Qt_Tools.7z"
::
::7z.exe a -t7z -r "Qt_Docs.7z" "C:\Qt\Docs\" 
::appveyor PushArtifact "Qt_Docs.7z"





:: Android
7z.exe a -t7z -r "Android.7z" "C:\Program Files (x86)\Android\*"
appveyor PushArtifact "Android.7z"

7z.exe a -t7z -r "Maven.7z" "C:\Program Files (x86)\Apache\Maven\*"
appveyor PushArtifact "Maven.7z"



:: Win SDK



::7z.exe a -t7z -r "Microsoft SDKs v7.1A.7z" "C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\*"
::appveyor PushArtifact "Microsoft SDKs v7.1A.7z"
::
::
:::: MySQL
::
::7z.exe a -t7z -r "MySQL Server 5.7.7z" "C:\Program Files\MySQL\MySQL Server 5.7\*"
::appveyor PushArtifact "MySQL Server 5.7.7z"
::
::
::7z.exe a -t7z -r "PostgreSQL 12.1 x64.7z" "C:\Program Files\PostgreSQL\12\*"
::appveyor PushArtifact "PostgreSQL 12.1 x64.7z"



::
::
::7z.exe a -t7z -r MongoDB.7z "C:\MongoDB\*"
::appveyor PushArtifact MongoDB.7z
::
::7z.exe a -t7z -r OpenSSL-v111-Win32.7z "C:\OpenSSL-v111-Win32\*"
::appveyor PushArtifact OpenSSL-v111-Win32.7z
::
::7z.exe a -t7z -r OpenSSL-v111-Win64.7z "C:\OpenSSL-v111-Win64\*"
::appveyor PushArtifact OpenSSL-v111-Win64.7z
::
::7z.exe a -t7z -r OpenSSL-Win32.7z "C:\OpenSSL-Win32\*"
::appveyor PushArtifact OpenSSL-Win32.7z
::
::7z.exe a -t7z -r OpenSSL-Win64.7z "C:\OpenSSL-Win64\*"
::appveyor PushArtifact OpenSSL-Win64.7z


cd /d %APPVEYOR_BUILD_FOLDER%


:install_ninja

