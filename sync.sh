#!/bin/bash
jekyll build && ~/workspace/s3cmd/s3cmd  sync --acl-public --delete-removed ~/workspace/physalis-tutorials/_site/  s3://physalis-cms/
