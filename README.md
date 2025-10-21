# network-interface-status
Script untuk memeriksa status interface jaringan (UP/DOWN) dan menonaktifkan interface yang berstatus DOWN secara otomatis di lingkungan DEVASC.
Example Output
=== Checking Network Interface Status ===

Interface lo is up
Interface enp0s3 is up
Interface dummy0 is unknown
Interface docker0 is down
→ Disabling docker0...

=== Summary ===
UP Interfaces: 2
DOWN Interfaces: 1
UNKNOWN Interfaces: 1
