#!/bin/bash

print_header() {
    printf "%s\n" "* * * * * * * * * * * * * * * * * * * * *"
    printf "%s\n" "*                                       *"
    printf "%s\n" "*      Welcome to Git Sync Action       *"
    printf "%s\n" "*                                       *"
    printf "%s\n" "* * * * * * * * * * * * * * * * * * * * *"
    printf "%s\n\n" ""
}

_init(){
    printf " -----> Add remote\n"

    git remote add target https://${TARGET_USERNAME}:${TARGET_TOKEN}@${TARGET_URL#https://}
}

_push() {
    printf " -----> Push\n"
    git push -f --all target
    git push -f --tags target
}

_delete(){
    printf " -----> Delete\n"
    git push -d target ${GITHUB_EVENT_REF}
}

sync() {
    _init

    case "${GITHUB_EVENT_NAME}" in
        push)
            _push
            ;;
        release)
            _push
            ;;
        delete)
            _delete
            ;;
        *)
            echo -n "Unknown"
            ;;
    esac
    printf " -----> Finished\n"
}

main() {
    set -e
    print_header
    sync
}

main "$@"