#!/usr/bin/env sh

defaults write com.apple.dt.Xcode IDEPackagePrebuiltsDownloadURL file:///Users/dschaefer2/swift/stage
defaults write com.apple.dt.Xcode IDEPackagePrebuiltsRootCert /Users/dschaefer2/swift/swiftpm/Fixtures/Signing/Certificates/TestRootCA.cer
