# -*- mode: ruby -*-
# vi: set ft=ruby :

#Check if you have the good Vagrant version to use docker provider...
Vagrant.require_version ">= 1.6.0"

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Use docker as default provider
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

# This docker config was inspired by https://github.com/bubenkoff/vagrant-docker-example

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  # config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 4000, host: 4000

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "docker" do |d|
    # The path to a directory containing a Dockerfile. One of this or
    # image is required.
    d.build_dir = "."

    # If true, then Vagrant will support SSH with the container. This
    # allows vagrant ssh to work, provisioners, etc. This defaults to
    # false.
    d.has_ssh = true
  end

  # The port to SSH into. By default this is port 22.
  config.ssh.port = 22

  # If true, X11 forwarding over SSH connections is enabled. Defaults to
  # false.
  # config.ssh.forward_x11 = true

  # The path to the private key to use to SSH into the guest machine. By
  # default this is the insecure private key that ships with Vagrant, since
  # that is what public boxes use. If you make your own custom box with a
  # custom SSH key, this should point to that private key.
  # You can also specify multiple private keys by setting this to be an array.
  # This is useful, for example, if you use the default private key to
  # bootstrap the machine, but replace it with perhaps a more secure key later.
  # config.ssh.private_key_path = [ "~/.vagrant.d/insecure_private_key", "~/.ssh/id_rsa"]

  # If true, agent forwarding over SSH connections is enabled. Defaults to false.
  config.ssh.forward_agent = true

  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    echo "Updating package definitions"
    sudo apt-get update

    echo "Installing git and build tools"
    sudo apt-get -y install git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev python2.7

    sudo ln -sf /usr/bin/python2.7 /usr/bin/python #pygments require pyton2 to work
  SHELL

  config.vm.provision "file", source: "~/.gitconfig", destination: "$HOME/.gitconfig"

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    if [ ! -d "$HOME/.rbenv" ]; then
      echo "Installing rbenv and ruby-build"

      git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
      git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

      echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
      echo 'eval "$(rbenv init -)"' >> ~/.bashrc

    else
      echo "Updating rbenv and ruby-build"

      cd ~/.rbenv
      git pull

      cd ~/.rbenv/plugins/ruby-build
      git pull
    fi

    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"

    if [ ! -d "$HOME/.rbenv/versions/2.2.4" ]; then
      echo "Installing ruby"

      rbenv install 2.2.4
      rbenv global 2.2.4

      gem update --system
      gem update

      gem install bundler
      bundle config path vendor/bundle

      rbenv rehash
    fi

    if [ -z "$LANG" ]; then
      echo "Setting LANG to us UTF8"
      echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
    fi
    if [ -z "$LC_ALL" ]; then
      echo "Setting LC_ALL to us UTF8"
      echo 'export LC_ALL=en_US.UTF-8' >> ~/.bashrc
    fi

    cd /vagrant
    bundle install

    if [ ! -d "/vagrant/_deploy" ]; then
      bundle exec rake setup_github_pages["git@github.com:philou/philou.github.com"]
      git checkout . # Revert github deploy url to my domain
      cd _deploy
      git pull origin master # pull to avoid non fast forward push
      cd ..
    fi

  SHELL

end
