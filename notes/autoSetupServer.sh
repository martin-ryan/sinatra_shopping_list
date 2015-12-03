# updates to latest version of server code/apps
apt-get updates

# install the ruby development environment
apt-get install ruby-dev -y

# install GCC (global c compiler) + other tools
apt-get install build-essential -y

# install git
apt-get install git -y

# gem time!
gem install bundler


gem install json
gem install httparty
gem install sinatra

# clone a repository from git (for example)
# bundler
# bundle exec rackup -p 80 --host 0.0.0.0 (to start serving)
# nohup bundle exec rackup -p 80 --host 0.0.0.0
# nano (file) ...to edit a text file
