#!/bin/sh

read-only-pass \
    --gpg-private-keys-file /Users/emory/private/personal/gpg-private-keys.asc \
    --gpg-ownertrust-file /Users/emory/private/personal/gpg-ownertrust.asc \
    --gpg2-private-keys-file /Users/emory/private/personal/gpg2-private-keys.asc \
    --gpg2-ownertrust-file /Users/emory/private/personal/gpg2-ownertrust.asc \
    --canonical-remote https://github.com/nextmoose/secrets.git \
    --canonical-branch master \
    --mode run \
    --run "${@}" &&
    true
