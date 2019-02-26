# katoolin V2
Command line interface (CLI) to install Kali Linux Tools in your desired distribution.

# Why?
Everybody should be capable of using his/her preferred distribution with his/her desired toolset.

# HowTo

## Operating System
Pick your preferred operating system you want to deal with.
The katoolin toolset and setup-helper is versatile and tries to fit all your needs.

## Tested
- Ubuntu 18.04
- Debian Stretch
- Linux Mint

## Built-In-Preparation
- Setup required Python (2.7)
- Initialising trusted keys for Kali's repositories
- Add Kali (rolling) repositories
- Setup apt-fast for accelerated bulk installations
- Installs as command 'katoolin'

## Installation
$ git clone https://github.com/jiansiting/katoolin.git

$ sudo ./install.sh


# Usage
- start/run: katoolin
- 1-99: Choose a listed category
- 1-99: Choose a listed tool
- 0 in Category installs all of its tools
- 0 at home installs all tools of all categories at once (Be careful with size, traffic and time)
- back : Go back
- gohome : Go to the main menu

# Warning
Before updating your base system, ensure to remove all Kali Linux repositories if you want to avoid any kind of update problem.
