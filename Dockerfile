ROM php:7.4-cli
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

# Install basics
RUN apt-get update && apt-get install -y git host mtr iputils-ping traceroute sqlite3

# Setting up Lookihg Glass and exec
CMD ./LookingGlass/LookingGlass/configure.sh && php ./LookingGlass/LookingGlass/LookingGlass.php
