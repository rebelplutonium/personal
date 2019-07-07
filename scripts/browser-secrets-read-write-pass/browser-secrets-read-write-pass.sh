#!/bin/sh

read-write-pass \
    --gpg-private-keys-key "gpg.secret.key" \
    --gpg-ownertrust-key "gpg.owner.trust" \
    --gpg2-private-keys-key "gpg2.secret.key" \
    --gpg2-ownertrust-key "gpg2.owner.trust" \
    --pass-executable "$(which system-secrets-read-only-pass)" \
    --personal-host-name "github.com" \
    --personal-user "git" \
    --personal-identity-key "origin.id_rsa" \
    --personal-known-hosts-key "origin.known_hosts" \
    --personal-organization "nextmoose" \
    --personal-repository "browser-secrets" \
    --personal-branch "master" \
    --committer-name "Emory Merryman" \
    --committer-email "emory.merryman@gmail.com" &&
    true
