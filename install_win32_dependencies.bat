@echo off
setlocal
cd /d %~dp0

echo Install Dependencies from pre-compiled .whl files
echo -----
pip install ./windows_wheels/MySQL_python-1.2.5-cp27-none-win32.whl
pip install ./windows_wheels/python_ldap-2.5.2-cp27-cp27m-win32.whl
pip install ./windows_wheels/pywin32-221-cp27-cp27m-win32.whl
echo -----
echo install common linux - windows requirements
echo -----
pip install -r requirements.txt
echo -----
echo install specific windows libraries 
echo -----
pip install pypiwin32
python ./windows_wheels/pywin32_postinstall.py -install
echo -----
echo init
echo -----
cp _coalition.ini coalition.ini
echo done