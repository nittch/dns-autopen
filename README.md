# dns-autopen
dns-autopen is a shell script that helps you to manage DNSSEC keys and periodically sign your zones.

It will create a structured directory with a templated zone file and KSK/ZSK keys.
Autopen will make it easy to roll over your keys and resign every day from a cron job (with serial auto increment).

Autopen is designed to be used with NSD and ldnsutils.

## What is an autopen?
Why this name? An autopen is a signing machine, see [wiki](https://en.wikipedia.org/wiki/Autopen)

## Zone Creation
`./dns-autopen.sh add-zone example.net`

## Creating keys
`./dns-autopen.sh add-ksk example.net`
`./dns-autopen.sh add-zsk example.net`

## Signing
`./dns-autopen.sh sign-zone example.net`

## Setup under NSD
TODO

## Zone reloading
`./dns-autopen.sh reload-zone example.net`

## Automation: re-sign every day
TODO

## Keys rolling
TODO
