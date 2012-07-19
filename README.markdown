# PublicServantsPrayer.org Website

## Installation Instructions:

Set hostname:

    echo "publicservantsprayer.org" > /etc/hostsname

Upgrade packages:

    aptitude update && aptitude upgrade

(keep locally modified grub if asked)

Install public key, delete root password

Install packages to enable PPA repositories

    apt-get -y install curl git-core python-software-properties

Add Nginx repository

    add-apt-repository ppa:nginx/stable

Update the package manager with the new repository and install Nginx

    aptitude update  && aptitude -y install nginx

Start Nginx

    service nginx start

Add repository for latest version of PostgreSQL

    add-apt-repository ppa:pitti/postgresql

Update repo and install PostgreSQL

    aptitude update && aptitude -y install postgresql libpq-dev

Enter into postgres shell as the postgres user

    sudo -u postgres psql

Set password for Postgres

    postgres=# \password
    Enter new password: 
    Enter it again:

Create user and database for psp app

    postgres=# create user psp with password 'changeme';
    CREATE ROLE
    postgres=# create database psp_production owner psp;
    CREATE DATABASE

Exit postgres shell

    \quit

Install node.js repository

    add-apt-repository ppa:chris-lea/node.js

Update and install node.js

    aptitude update && aptitude -y install nodejs

Create a less priveledged user 'deployer'

    adduser deployer --ingroup sudo

Change to this new user and go to home directory

    su deployer
    cd ~

Use the rbenv-installer to install Ruby:  https://github.com/fesplugas/rbenv-installer

    curl -L https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

Edit ~/.bashrc adding this code at the top of the file

    export RBENV_ROOT="${HOME}/.rbenv"

    if [ -d "${RBENV_ROOT}" ]; then
      export PATH="${RBENV_ROOT}/bin:${PATH}"
      eval "$(rbenv init -)"
    fi

Reload .bashrc

    . ~/.bashrc

Set up rbenv with this command

    rbenv bootstrap-ubuntu-12-04

Install Ruby

    rbenv install 1.9.3-p194

Get a cup of tea...

Make this the global version of Ruby

    rbenv global 1.9.3-p194

Install Bundler and Rake

    rbenv bootstrap

Attempt to connect to github and say 'yes' when asked to continue.  This adds githubs host key.  Expect permission denied error.

    ssh git@github.com

Create ssh key pair (no passphrase, just hit enter)

    ssh-keygen

View and copy paste public key into github admin interface for this repository

    cat ~/.ssh/id_rsa.pub

Cross fingers and run capistrano from development server

    cap deploy:setup

Back on new PublicServantsPrayer production server, edit config files as the deployer user

    vim apps/psp/shared/config/database.yml

Back on dev server

    cap deploy:cold


