#!/usr/bin/env bash

mongoimport --db test --collection restaurants --drop --file /vagrant/data/mongodb/primer-dataset.json