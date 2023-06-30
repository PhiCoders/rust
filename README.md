# Docker Rust Template
### Project Setup
This project is build on top of `docker` and `docker compose` which contains a set of `bash scripts` that wraps most used commands around `docker` and `docker compose`.

### Commands
- `./ph start` starts the `docker` containers using `docker compose`.

- `./ph rebuild` rebuilds the `image` and starts the project.

- `./ph cargo [args]` runs the `cargo` commands inside the container.
