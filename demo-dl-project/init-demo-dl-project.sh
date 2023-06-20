#!/bin/sh

WORK_DIR=/home/onyxia/work
SOURCE_DIR=${WORK_DIR}/code

mkdir $SOURCE_DIR
# Clone demo repository
REPO_URL=https://gitlab.inria.fr/mdiazmel/dl-example-project.git
git clone --depth 1 $REPO_URL $SOURCE_DIR

# Give write permissions
chown -R onyxia:users $SOURCE_DIR/
