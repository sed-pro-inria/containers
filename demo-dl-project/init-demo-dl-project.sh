#!/bin/sh

SECTION=$1
CHAPTER=$2

WORK_DIR=/home/onyxia/work
SOURCE_DIR=${WORK_DIR}/code

# Clone course repository
REPO_URL=https://gitlab.inria.fr/mdiazmel/dl-example-project.git
git clone --depth 1 $REPO_URL $SOURCE_DIR

# Give write permissions
chown -R onyxia:users $SOURCE_DIR/