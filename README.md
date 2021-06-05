# WWW

This project is used to configure and build the s-expressions.org website.

## Description

The goal of this project is to provide a website for the S-expressions organization.  The website will display information about the organization and its projects.  The website will be organized with subdomains specific to projects.  The website will be built automatically using the information contained in the organization's GitHub repositories.  The project is also intended to demonstrate the utility of S-expressions in declarative programming.

## Getting Started

### Dependencies

* OpenBSD 6.9
* Rsync 3.3.3
* Curl 7.76.0
* Git 2.31.1
* Chicken 5.2.0
    * r7rs
    * regex
    * srfi-19
* ImageMagick 6.9.12.2

### Building the site
```
cd PROJECT_DIR && make
```
### Installing the site
The following should be executed by a user with administrative privileges granted in the '/etc/doas.conf' file:
```
cd PROJECT_DIR && make install
```
### Starting the server(s)
The following should be executed by a user with administrative privileges granted in the '/etc/doas.conf' file:
```
cd PROJECT_DIR && make start
```
### Stopping the server(s)
The following should be executed by a user with administrative privileges granted in the '/etc/doas.conf' file:
```
cd PROJECT_DIR && make stop
```
### Uninstalling the site
**Warning: 'make uninstall' is not idempotent.** Executing the command more than once between installs will remove any backups of a previous installation.

The following should be executed by a user with administrative privileges granted in the '/etc/doas.conf' file:
```
cd PROJECT_DIR && make uninstall
```
### Cleaning the project
```
cd PROJECT_DIR && make clean
```

## Help

Any questions, comments or requests for technical advice should be directed to:

[Steven Wiley](https://github.com/orgs/s-expressions/people/s-wiley)

or any [members](https://github.com/orgs/s-expressions/people) of the S-expressions organization.
