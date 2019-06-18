#!/bin/bash
cd /root/.jenkins/workspace/test1/ucenter-api
mkdir test
echo "BRANCH_NAME = $BRANCH_NAME" >> a.txt
echo "CHANGE_URL = $CHANGE_URL" >> a.txt
echo "CHANGE_TITLE = $CHANGE_TITLE" >> a.txt
echo "CHANGE_AUTHOR = $CHANGE_AUTHOR" >> a.txt
echo "CHANGE_AUTHOR_DISPLAY_NAME = $CHANGE_AUTHOR_DISPLAY_NAME" >> a.txt
echo "CHANGE_AUTHOR_EMAIL = $CHANGE_AUTHOR_EMAIL" >> a.txt
echo "CHANGE_TARGET = $CHANGE_TARGET" >> a.txt
echo "BUILD_NUMBER = $BUILD_NUMBER" >> a.txt
echo "BUILD_ID = $BUILD_ID" >> a.txt
echo "BUILD_DISPLAY_NAME = $BUILD_DISPLAY_NAME" >> a.txt
echo "JOB_NAME = $JOB_NAME" >> a.txt
echo "JOB_BASE_NAME = $JOB_BASE_NAME" >> a.txt
echo "BUILD_TAG = $BUILD_TAG" >> a.txt
echo "EXECUTOR_NUMBER = $EXECUTOR_NUMBER" >> a.txt
echo "NODE_NAME = $NODE_NAME" >> a.txt
echo "NODE_LABELS = $NODE_LABELS" >> a.txt
echo "WORKSPACE = $WORKSPACE" >> a.txt
echo "JENKINS_HOME = $JENKINS_HOME" >> a.txt
echo "JENKINS_URL = $JENKINS_URL" >> a.txt
echo "BUILD_URL = $BUILD_URL" >> a.txt
echo "JOB_URL = $JOB_URL" >> a.txt
echo "GIT_COMMIT = $GIT_COMMIT" >> a.txt
echo "GIT_PREVIOUS_COMMIT = $GIT_PREVIOUS_COMMIT" >> a.txt
echo "GIT_PREVIOUS_SUCCESSFUL_COMMIT = $GIT_PREVIOUS_SUCCESSFUL_COMMIT" >> a.txt
echo "GIT_BRANCH = $GIT_BRANCH" >> a.txt
echo "GIT_LOCAL_BRANCH = $GIT_LOCAL_BRANCH" >> a.txt
echo "GIT_URL = #GIT_URL" >> a.txt
echo "GIT_COMMITTER_NAME = $GIT_COMMITTER_NAME" >> a.txt
echo "GIT_AUTHOR_NAME = $GIT_AUTHOR_NAME" >> a.txt
echo "GIT_COMMITTER_EMAIL = $GIT_COMMITTER_EMAIL" >> a.txt
echo "GIT_AUTHOR_EMAIL = $GIT_AUTHOR_EMAIL" >> a.txt
echo "SVN_REVISION = $SVN_REVISION" >> a.txt
echo "SVN_URL = $SVN_URL" >> a.txt
echo "SCM_CHANGELOG = $SCM_CHANGELOG" >> a.txt