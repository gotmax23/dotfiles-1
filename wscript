#!/usr/bin/env python3
import json, os, shutil

DIR = os.getcwd()

def _get_json(path):
    return json.load(open(DIR + path))

def update_and_upgrade():
    os.system('apt-get update -y')
    os.system('apt-get upgrade -y')
    os.system('apt-get dist-upgrade -y')


def apt_install_core():
    for package in _get_json('/apt/apt-installs-core.json'):
        os.system("apt-get install {} -y".format(package))


def add_apt_keys():
    for key in _get_json('/apt/apt-keys.json'):
        os.system("wget -O - {} | apt-key add -".format(key))


def add_apt_sources():
    os.system('apt/add-apt-sources.sh')


def add_apt_repos():
    for repo in _get_json('/apt/apt-repos.json'):
        os.system("add-apt-repository {} -y".format(repo))


def apt_install_extras():
    for package in _get_json('/apt/apt-installs-extra.json'):
        os.system("apt-get install {} -y".format(package))


def run_custom_installs():
    os.system('apt/custom-installs.sh')


def install_atom_packages():
    packages = " ".join(_get_json('/atom/packages.json'))
    os.system("apm install {}".format(packages))


def install_configs():
    shutil.copyfile(DIR + "/config/terminator.conf", "~/.config/terminator/config")


if __name__ == '__main__':
    print("Please run this file using the install script, not directly.")
    exit(1)
