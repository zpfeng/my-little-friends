#! /usr/bin/env bash

# by torstein.k.johansen@gmail.com
set -o errexit
set -o nounset
set -o pipefail

read_user_input() {
  :
}

main() {
  read_user_input "$@"
}

main "$@"
