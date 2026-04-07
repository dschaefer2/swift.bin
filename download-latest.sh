#!/usr/bin/env sh

mkdir -p ~/swift/stage
cd ~/swift/stage || die oops

wget 'https://ci.swift.org/view/Swift%206.2/job/swift-6.2-swift-syntax-builds-macos/lastSuccessfulBuild/artifact/*zip*/archive.zip'
unzip -o archive.zip
rm archive.zip

wget 'https://ci.swift.org/view/Swift%206.2/job/swift-6.2-swift-syntax-builds-linux/lastSuccessfulBuild/artifact/*zip*/archive.zip'
unzip -o archive.zip
rm archive.zip

wget 'https://ci-external.swift.org/job/swift-6.2-windows-swift-syntax-build/lastSuccessfulBuild/artifact/*zip*/archive.zip'
unzip -o archive.zip
rm archive.zip

cp -R archive/* .
rm -fr archive
