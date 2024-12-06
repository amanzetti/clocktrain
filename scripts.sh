#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {br_all|br_data_local|br_presentation|br_domain|add_shared} [library_name]"
  exit 1
fi

run_command_in_path() {
  local path=$1
  local command=$2

  echo "Eseguendo '$command' in '$path'"
  (cd "$path" && pwd && eval "$command")
}

br(){
  echo "Generating build_runner for the whole project"
  dart run build_runner build --build-filter="lib/data/**"
}

br_delete_conflicting_outputs() {
  echo "Generating build_runner for the whole project"
  dart run build_runner build --delete-conflicting-outputs
}

case $1 in
  br_all)
    echo "Generating build_runner for the whole project"
    dart run build_runner build --delete-conflicting-outputs
    ;;
  br_app_login)
    echo "Generating build_runner for the app_login"
    run_command_in_path "app_features/app_feature_login/lib" "br"
    # dart run build_runner build --build-filter="app_features/app_feature_login/**"
    ;;
  br_data_local)
    echo "Generating build_runner for the local db"
    dart run build_runner build --build-filter="lib/data/local/**"
    ;;
  br_domain)
    echo "Generating build_runner for the presentation"
    dart run build_runner build --build-filter="lib/domain**"
    ;;
  br_presentation)
    echo "Generating build_runner for the presentation"
    dart run build_runner build --build-filter="lib/presentation**"
    ;;
  add_shared)
    if [ "$#" -ne 2 ]; then
      echo "Usage: $0 add_shared {library_name}"
      exit 1
    fi
    library_name=$2
    echo "Adding shared library: $library_name"
    cd app_shared
    flutter pub add $library_name
    # Aggiungi qui il comando per aggiungere la libreria condivisa
    # Ad esempio, se stai usando Flutter, potresti voler aggiungere la libreria al pubspec.yaml
    echo "  $library_name:" >> pubspec.yaml
    ;;
  *)
    echo "Usage: $0 {br_all|br_data_local|br_presentation|br_domain|add_shared} [library_name]"
    exit 1
    ;;
esac

echo "Generating completed!"