#!/bin/sh

read-write-pass \
    --gpg-private-keys-file "${HOME}/private/personal/gpg-private-keys.asc" \
    --gpg-ownertrust-file "${HOME}/private/personal/gpg-ownertrust.asc" \
    --gpg2-private-keys-file "${HOME}/private/personal/gpg2-private-keys.asc" \
    --gpg2-ownertrust-file "${HOME}/private/personal/gpg2-ownertrust.asc" \
    --pass-executable "$(which system-secrets-read-only-pass)" \
    --personal-host-name "github.com" \
    --personal-user "git" \
    --personal-identity-key "origin.id_rsa" \
    --personal-known-hosts-key "origin.known_hosts" \
    --personal-organization "nextmoose" \
    --personal-repository "challenge-secrets" \
    --personal-branch "master" \
    --committer-name "Emory Merryman" \
    --committer-email "emory.merryman@gmail.com" &&
    true
