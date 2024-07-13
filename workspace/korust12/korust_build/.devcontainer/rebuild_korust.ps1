& .\export_crt.ps1
docker rm korust12 -f
docker rmi korust12base
docker rmi korust12
docker build -t korust12base:latest .
devcontainer build --workspace-folder .. --image-name korust12:latest
