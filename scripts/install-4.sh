#!/bin/bash

for config in amazon_s3 delayed_jobs domain file_store outgoing_mail security external_migration; \
do cp -v config/$config.yml.example config/$config.yml; done

cp config/dynamic_settings.yml.example config/dynamic_settings.yml

cp config/database.yml.example config/database.yml