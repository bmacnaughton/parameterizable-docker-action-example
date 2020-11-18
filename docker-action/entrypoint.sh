#!/bin/sh -l
branch=$1

version=$(cat /etc/alpine-release)

echo "::set-output name=version::${version}"
echo "::set-output name=branch-to-test::${branch}"
