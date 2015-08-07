# dns-autopen
dns-autopen is a shell script that helps you to manage DNSSEC keys and periodically sign your zones.

It will create a structured directory with a templated zone file and KSK/ZSK keys.
Autopen will make it easy to roll over your keys and resign every day from a cron job (with serial auto increment).

Autopen is designed to be used with NSD and ldnsutils.

## What is an autopen?
Why this name? An autopen is a signing machine, see [Autopen](https://en.wikipedia.org/wiki/Autopen).

## Zone Creation
To create a new zone, you have to type:
```sh
./dns-autopen.sh add-zone example.net
```

The script will ask you at the end if you wish to create initial keys.
You may also create keys manually with:
```sh
./dns-autopen.sh add-ksk example.net
./dns-autopen.sh add-zsk example.net
```
You should declare DS record for KSK in parent's zone (or ask your registrar to do so).

The script has created a new directory with your zone file (example.net/example.net.db), and KSK/ZSK keys (in example.net/keys directory).
You should edit the zone, to make it fits your needs (don't forget to edit SOA field: authority name server and email contact adress).

When done, you have to generate a new serial and sign the zone.
This is done by running:
```sh
./dns-autopen.sh sign-zone example.net
```
sign-zone will use every key available in example.net/keys directory.
This will create your signed zone file (example.net/example.net.generated.signed.db), which may be loaded by NSD server.

## Zone updates
After editing your example.net/example.net.db file, you simply have to re-sign and reload the zone.

```sh
./dns-autopen.sh sign-zone example.net
./dns-autopen.sh reload-zone example.net
```

This will increase serial, sign using every keys available and make NSD to reload it.

## Automation: re-sign every day
TODO

## Keys rolling
TODO
