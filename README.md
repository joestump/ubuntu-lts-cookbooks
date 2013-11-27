# Ubuntu LTS Chef Cookbooks

## Overview

The current state of Chef community cookbooks leaves much to be desired. Monolithic packages attempt to install/configure all possible scenarios of a piece of software, which often leads to sub-optimal implementations for a given platform. This repository is a collection of minimalist cookbooks for Chef which leverage the best community cookbooks and are specifically targeted at Ubuntu LTS.

## Goals

* Use Ubuntu LTS APT packages by default.
* Defer to vendor APT repositories for packages when possible.
* Do not support environments outside of Ubuntu LTS.
* Leverage LWRPs whenever possible.
* Configured entirely via environment, role, and/or node attributes.
* Use Upstart for all services.
