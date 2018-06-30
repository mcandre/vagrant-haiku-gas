# vagrant-haiku-gas: a Vagrant box with Haiku OS + GNU assembler

# DISCLAIMER

Currently broken, awaiting research into relevant C calling convention, linker details, and so on for Haiku assembler applications.

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-haiku-gas-amd64
https://app.vagrantup.com/mcandre/boxes/vagrant-haiku-gas-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ vagrant ssh -c "cd /boot/vagrant-src && as -o hello.o hello.s && ld -o hello hello.o && strip -s hello && ./hello"
...
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com) 2.0.2+
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd amd64 && make vagrant-haiku-gas-amd64.box"
$ sh -c "cd i386 && make vagrant-haiku-gas-i386.box"
```
