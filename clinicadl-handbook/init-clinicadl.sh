#!/bin/sh

SECTION=$1
CHAPTER=$2

WORK_DIR=/home/onyxia/work
CLONE_DIR=${WORK_DIR}/repo-git
COURSE_DIR=${CLONE_DIR}/notebooks
FORMATION_DIR=${WORK_DIR}/formation

# Clone course repository
REPO_URL=https://github.com/aramis-lab/clinicadl_handbook
git clone --depth 1 $REPO_URL $CLONE_DIR

# Convert .md to .ipynb
#pip install python-frontmatter jupytext
#python $CLONE_DIR/utils/md_to_ipynb.py $COURSE_DIR/${SECTION}/${CHAPTER}/tutorial.md
#rm $COURSE_DIR/${SECTION}/${CHAPTER}/tutorial.md

# Put chapter data in the training dir
mkdir $FORMATION_DIR
cp ${COURSE_DIR}/* ${FORMATION_DIR}/

# Give write permissions
chown -R onyxia:users $FORMATION_DIR/

# Remove course Git repository
rm -r $CLONE_DIR
