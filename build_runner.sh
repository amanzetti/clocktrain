#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {localDto|localDb|localDao|presentation}"
  exit 1
fi

case $1 in
  localDto)
    echo "Generating build_runner for the local dto"
    dart run build_runner build --delete-conflicting-outputs --build-filter="lib/data/local/dto/**"
    ;;
  localDb)
    echo "Generating build_runner for the local db"
    dart run build_runner build --delete-conflicting-outputs --build-filter="lib/data/local/**"
    ;;
  localDao)
    echo "Generating build_runner for the local db"
    dart run build_runner build --delete-conflicting-outputs --build-filter="lib/data/local/dao/**"
    ;;
  presentation)
    echo "Generating build_runner for the presentation"
    dart run build_runner build --delete-conflicting-outputs --build-filter="lib/presentation**"
    ;;
  *)
    echo "Usage: $0 {localDto|localDb|localDao|presentation}"
    exit 1
    ;;
esac

echo "Generating completed!"