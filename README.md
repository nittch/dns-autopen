# dns-autopen
dns-autopen is a shell script that helps you to manage DNSSEC keys and periodically sign your zones.

It will create a structured directory with a templated zone file and KSK/ZSK keys.
Autopen will make it easy to roll over your keys and resign every day from a cron job (with serial auto increment).

Autopen is designed to be used with NSD and ldnsutils.

## What is an autopen?
Why this name? An autopen is a signing machine, see [Autopen](https://en.wikipedia.org/wiki/Autopen).

## Zone Creation
`./dns-autopen.sh add-zone example.net`

The script will ask you at the end if you wish to create initial keys (see next section).

## Creating keys
```sh
./dns-autopen.sh add-ksk example.net
./dns-autopen.sh add-zsk example.net
```

## Signing
`./dns-autopen.sh sign-zone example.net`

## Setup under NSD
Once the zone has been initially signed, it may be loaded by NSD.

## Zone updates
You simply have to re-sign and reload the zone.

```sh
./dns-autopen.sh sign-zone example.net
./dns-autopen.sh reload-zone example.net
```

## Automation: re-sign every day
TODO

## Keys rolling
TODO
