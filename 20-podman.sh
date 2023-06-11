
podman run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=qaz123ZX -d docker.io/postgres

podman ps

podman stop postgres
