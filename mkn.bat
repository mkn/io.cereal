

@ECHO off
SET PWD=%CD%
SET VERSION="master"
SET URL="https://github.com/USCiLab/cereal"
SET DIR="cereal"

IF EXIST %PWD%\%DIR% (
cd %DIR%
git pull origin %VERSION%
cd ..
)

IF NOT EXIST %PWD%\%DIR% (

git clone --depth 1 %URL% -b %VERSION% %DIR% --recursive || exit 666 /b

)

