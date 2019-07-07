#!/bin/sh

read-only-pass \
    --gpg-private-keys-file "${HOME}/private/personal/gpg-private-keys.asc" \
    --gpg-ownertrust-file "${HOME}/private/personal/gpg-ownertrust.asc" \
    --gpg2-private-keys-file "${HOME}/private/personal/gpg2-private-keys.asc" \
    --gpg2-ownertrust-file "${HOME}/private/personal/gpg2-ownertrust.asc" \
    --canonical-remote "https://github.com/nextmoose/browser-secrets.git" \
    --canonical-branch master \
    --mode shell &&
    true
