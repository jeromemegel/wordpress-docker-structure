# Wordpress 5.2 Docker structure

- Copy `.env.sample` to `.env`
- Edit `.env` file with your custom data
- Execute `sh scripts/init.sh` to create base folders
- If you are on loal or test server, copy 'docker-compose.override.yml.dis' to 'docker-compose.override.yml'
- Execute `docker-compose up -d`
- Execute `sh scripts/install.sh` to install Wordpress
