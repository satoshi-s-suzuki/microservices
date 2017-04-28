#!/bin/sh

# removing existing files
rm -rf *.md *.pptx *.html *.json css images

# copy from forked repository
REPODIR="/drives/c/Users/sasuzuki/OneDrive/01.Work/04.Cloud/201705_OracleCodeTokyo/cloud-native-devops-workshop"
cp -pr ${REPODIR}/microservices_JP/* ./

exit 0
