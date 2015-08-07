# dns-autopen
dns-autopen is a shell script that helps you to manage DNSSEC keys and periodically sign your zones.

It will create a structured directory with a templated zone file and KSK/ZSK keys.
Autopen will make it easy to roll over your keys and resign every day from a cron job (with serial auto increment).

Autopen is designed to be used with NSD and ldnsutils.
