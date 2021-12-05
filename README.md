# Starbound-Docker
Starbound Docker with Mods Support

# WARNING: THIS DOCKER IMAGE IS NOT COMPLETE YET!
This docker image currently does not support settings nor save data

# Manually Building the Image

If you don't trust me and the images I build don't worry about it I rarely trust anyone my self.
I will show you how I build the image so that you can download this repo and build it your self if you don't trust me or the public repositories

```shell
# Make Steam Username File
vim STEAM_USERNAME
# Make Steam Password File (Must be plain text sorry dems da brakes complain to steam not me)
vim STEAM_PASSWORD
# Create blank SteamGuard Key file incase its needed (you need to change the docker-compose.yaml file if you don't want to do this and have SteamGuard disabled)
touch STEAM_GUARD
# Build the image and tag it correctly
sudo docker build -t starbound-docker:latest .
# Spin up server
sudo docker-compose up
```

thats it... really...
