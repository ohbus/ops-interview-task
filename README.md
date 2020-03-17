# Zerodha Ops Task

## Description

This is a sample `Go` application which connects to Redis. The app increments a `counter` on an incoming request.

### Setting up the app

- Use `make build` to compile the binary.
- Set the environment variables:
    - `DEMO_APP_ADDR`: Address where the app should listen to
    - `DEMO_REDIS_ADDR`: Address where Redis is running

## Tasks

- Create a `Dockerfile` for the app.

- Create a `docker-compose.yml` for the app which includes

  - `redis` service, with the data directory of `redis` mounted at `/data` in your VM.
  - `app` service running with port `8000` exposed to the host.

- Write a bash script that creates and boots [Vagrant box](https://vagrant.io) with Ubuntu.

- Using Ansible provision the VM to:

  - Setup hostname of VM as `demo-ops`
  - Create a user `demo`
  - Configure `sysctl` for sane defaults. For eg: increasing open files limit. Configure a variety of `sysctl` settings to make the VM a production grade one.
  - Set the system's timezone to "Asia/Kolkata"
  - Install Docker and Docker-Compose
  - Configure Docker Daemon to have sane defaults. For eg: to keep logs size in check.
  - Deploy the `docker-compose.yml` in `/etc/demo-ops` and start the services

- Commit the scripts to Github and share the link.

### Bonus Section

If you have experience working with Kubernetes, you can attempt the bonus scenario:

- Create a namespace `demo-ops`
- Create a deployment and service manifest for the app.
- Configure liveliness check, resource quotas for the deployment.