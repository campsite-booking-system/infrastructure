# Vulpee - Infrastructure

Vulpee is a Booking Management System. This repo regroups everything necessary to run the whole Vulpee stack.

We use Docker for all of our services. These are the different containers available:

- **vulpee-proxy**: Proxy container using `traefik`.
- **vulpee-postgres**: Postgres database for the back-end.
- **vulpee-back-end-typescript**: Node container which compiles the back-end Typescript sources to `js`.
- **vulpee-back-end**: Node containers which runs the back-end server.
- **vulpee-admin**: Node containers which runs the admin React dev server.
- **vulpee-storybook**: Node container which runs the storybook dev server for the UI library.

## Installation

1. Follow the installation instructions in the repo of each application

2. Clone the repository

```bash
git clone https://github.com/vulpee/infrastructure
```

3. Launch the Docker containers

```bash
cd infrastructure
docker-compose up -d
```

4. Add the following hosts to your `/etc/hosts` file:

```bash
##
# Vulpee
##
127.0.0.1	vulpee.local
127.0.0.1	app.vulpee.local
127.0.0.1	ui.vulpee.local
127.0.0.1	api.vulpee.local
127.0.0.1	demo-establishment.api.vulpee.local
```
