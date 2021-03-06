# mkmydist
Make the current environment distributable as a GNU/Linux distribution

## Dependencies
You must have PinguyBuilder installed.　
On Ubuntu 20.04, you need to get more dependencies.

Links for GNU/Linux based on Ubuntu:
- Download the xresprobe required for PinguyBuilder: https://launchpad.net/ubuntu/+source/xresprobe/0.4.24ubuntu9/+build/1274262/+files/xresprobe_0.4.24ubuntu9_amd64.deb
- Download the PinguyBuilder: https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_5.2-1_all.deb/download

## Usage
Run `./makemy-dist.sh [ISO name]`.
After that, the configuration file is automatically copied, cleaned up, and iso is generated. Please change the OS name in advance.
If no ISO name is specified, the name will be `mydist.iso`.
When completed, there is an iso file in the `/home/PinguyBuilder/PinguyBuilder` directory.

### How to change distribution name
Change the `PRETTY_NAME` item in `/usr/lib/os-release` to the name of your OS. Please note that it may not work properly if you change other places.

## License
Copyright (C) nexryai
Copyright (C) 2020 nexryai
GNU General Public License v3.0 or later(GPL-3.0-or-later)
