& .\export_crt.ps1
docker rm korust -f
docker rmi korustbase
docker rmi korust
docker build -t korustbase:latest .
devcontainer build --workspace-folder .. --image-name korust:latest
