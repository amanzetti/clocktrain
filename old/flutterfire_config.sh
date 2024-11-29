#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Adapted for your project with flavors: dev, mock, qa, prod
# The base app id is 'com.prk.clocktrain' for both Android and iOS

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'mock', 'qa', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=clocktrain-1b941 \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=com.prk.clocktrain.dev \
      --ios-out=ios/Runner/dev/GoogleService-Info.plist \
      --android-package-name=com.prk.clocktrain.dev \
      --android-out=android/app/src/dev/google-services.json
    ;;
  mock)
    flutterfire config \
      --project=clocktrain-1b941 \
      --out=lib/firebase_options_mock.dart \
      --ios-bundle-id=com.prk.clocktrain.mock \
      --ios-out=ios/Runner/mock/GoogleService-Info.plist \
      --android-package-name=com.prk.clocktrain.mock \
      --android-out=android/app/src/mock/google-services.json
    ;;
  qa)
    flutterfire config \
      --project=clocktrain-1b941 \
      --out=lib/firebase_options_qa.dart \
      --ios-bundle-id=com.prk.clocktrain.qa \
      --ios-out=ios/Runner/qa/GoogleService-Info.plist \
      --android-package-name=com.prk.clocktrain.qa \
      --android-out=android/app/src/qa/google-services.json
    ;;
  prod)
    flutterfire config \
      --project=clocktrain-1b941 \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=com.prk.clocktrain \
      --ios-out=ios/Runner/prod/GoogleService-Info.plist \
      --android-package-name=com.prk.clocktrain \
      --android-out=android/app/src/prod/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'mock', 'qa', or 'prod'."
    exit 1
    ;;
esac