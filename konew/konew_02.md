# konew_02
* (1)
```
cd ~
ni korice -i d -f
cd .\korice\
ni konew02 -i d -f
cd .\konew02\
code .
```
* (2) 
```
cd .\.devcontainer\
irm -Uri https://gitlab.com/api/v4/projects/58360840/repository/files/export_crt.ps1/raw?ref=main | iex
```
* (3) Dockerfile
```
FROM mcr.microsoft.com/devcontainers/cpp:1-debian-12
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
RUN rm -f /usr/local/share/ca-certificates/*.crt
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
```
* (4) PS>
```
cd ~\korice\konew02\.devcontainer
rm *.cer,*.crt
```
* (5) $
```
cmake --version
gcc --version
g++ --version
git clone https://github.com/rutura/cmakeseries.git
cd cmakeseries/
ls -a
rm .git -rf
cd ..
git init -q
git config --global --add safe.directory '*'
git add .
git commit -m 'first commit'
cd cmakeseries/
cd Ep002/
mkdir build
cd build/
cmake ../source/
make
./HelloAppBinary
rm HelloAppBinary
cmake --build .
./HelloAppBinary
```
* 關閉信任資料夾。
* 開啟VS Code時, 不要還原最後的關閉狀態。
