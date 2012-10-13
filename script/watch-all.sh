#!/usr/bin/env bash

bundle exec compass watch &
coffee --watch --compile coffee/ public/js/ &
rackup config.ru -p4567
