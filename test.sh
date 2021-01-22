#!/bin/sh
mvn version:set -DnewVersion=REL-2.5.0
mvn -Dmaven.test.skip=true clean install
git add *
git commit -m "uploading pom version"
git push --set-upstream origin master
git tag REL-2.5.0
git push --set-upstream origin --tags
