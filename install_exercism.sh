#!/usr/bin/env sh
current=$(pwd)

echo 'Installing dependencies...'
apt-get -qq update
apt-get -qq install -y wget

echo 'Installing exercism CLI...'
dist='/opt/exercism'
mkdir -p $dist
cd $dist
wget -q 'https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz'
tar xf exercism-3.0.13-linux-x86_64.tar.gz
mv exercism /usr/bin

cd $current
rm -rf $dist

echo 'Done!'
