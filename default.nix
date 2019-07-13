{
  staples
} :
let
  system-secrets-read-only-pass = staples.script {
    name = "system-secrets-read-only-pass";
    src = ./scripts/system-secrets-read-only-pass;
    dependencies = [
      staples.scripts.read-only-pass
    ];
  };
in
staples.pkgs.mkShell {
  buildInputs = [
    staples.scripts.homer
    (staples.script {
      name = "browser-secrets-read-only-pass";
      src = ./scripts/browser-secrets-read-only-pass;
      dependencies = [
        staples.scripts.read-only-pass
      ];
    })
    (staples.script {
      name = "browser-secrets-read-write-pass";
      src = ./scripts/browser-secrets-read-write-pass;
      dependencies = [
        staples.scripts.read-write-pass
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "challenge-secrets-read-write-pass";
      src = ./scripts/challenge-secrets-read-write-pass;
      dependencies = [
        staples.scripts.read-write-pass
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "nixos-configuration-development-environment";
      src = ./scripts/nixos-configuration-development-environment;
      dependencies = [
        staples.scripts.development-environment
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "personal-development-environment";
      src = ./scripts/personal-development-environment;
      dependencies = [
        staples.scripts.development-environment
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "phonetic-development-environment";
      src = ./scripts/phonetic-development-environment;
      dependencies = [
        staples.scripts.development-environment
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "pass-phonetic-development-environment";
      src = ./scripts/pass-phonetic-development-environment;
      dependencies = [
        staples.scripts.development-environment
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    (staples.script {
      name = "staples-development-environment";
      src = ./scripts/staples-development-environment;
      dependencies = [
        staples.scripts.development-environment
	staples.pkgs.which
	system-secrets-read-only-pass
      ];
    })
    system-secrets-read-only-pass
  ];
}