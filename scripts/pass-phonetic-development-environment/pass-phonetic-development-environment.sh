#!/bin/sh

if [ "${#}" == 0 ]
then
    echo Unspecifed COMMIT MESSAGE &&
	exit 64 &&
	true
fi &&
    development-environment \
	--gpg-private-keys-key "gpg.secret.key" \
	--gpg-ownertrust-key "gpg.owner.trust" \
	--gpg2-private-keys-key "gpg2.secret.key" \
	--gpg2-ownertrust-key "gpg2.owner.trust" \
	--pass-executable "$(which system-secrets-read-only-pass)" \
	--upstream-host-name "github.com" \
	--upstream-user "git" \
	--upstream-identity-key "upstream.id_rsa" \
	--upstream-known-hosts-key "upstream.known_hosts" \
	--upstream-organization "rebelplutonium" \
	--upstream-repository "pass-phonetic" \
	--upstream-branch "master" \
	--personal-host-name "github.com" \
	--personal-user "git" \
	--personal-identity-key "origin.id_rsa" \
	--personal-known-hosts-key "origin.known_hosts" \
	--personal-organization "nextmoose" \
	--personal-repository "pass-phonetic" \
	--personal-branch "master" \
	--report-host-name "github.com" \
	--report-user "git" \
	--report-identity-key "report.id_rsa" \
	--report-known-hosts-key "report.known_hosts" \
	--report-organization "rebelplutonium" \
	--report-repository "pass-phonetic" \
	--report-branch "master" \
	--committer-name "Emory" \
	--committer-email "Emory@Remine.com" \
	--commit-message "${@}" &&
    true
