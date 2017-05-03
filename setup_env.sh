#! /bin/bash

javac -version
if [ $? -ne 0 ]; then
    echo "No java in your system, Installing Java..."
    brew cask install java
fi

echo "installing tools"

declare -a names=(
    "postgres"
    "kafka"
    "redis"
    "awscli"
    "docker"
    "git"
    "heroku"
    "sqlite"
    "node"
    "postgres"
    "zookeeper"
    "kubernetes-cli"
    "tree"
    "protobuf"
    "wget"
    )

for a in ${names[@]}
    do
        brew install ${a}
    done;
echo 'Tools upto date!'
