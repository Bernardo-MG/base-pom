#!/bin/bash
#
# Function for creating the Maven settings file for the CI process, storing it in the
# ~/settings.xml path.
#
# It will take care of two pieces of data:
# - Servers settings
# - Active profile
#
# Server settings will be read by Maven from the environmental variables, and this
# file will tell him so.
#
# The active profile will depend on the type of version the current code is for.
# Depending on if this is a release or a development version.
#
# REMEMBER: For security reasons the data stored in the generated file should not be
# shared. Never print it on the console or let it be accessed in any way.
#
# --- SERVERS ---
#
# A total of four servers will be set:
# - releases: for deploying release artifacts
# - site: for deploying the Maven site for the release version
# - snapshots: for deploying snapshot artifacts
# - site-development: for deploying the Maven site for the development version
#
# --- PROFILES ---
#
# One of two profiles may be set, depending on the type of version, which is read from
# the VERSION_TYPE environmental variable:
#
# - deploy-site-release: for setting up the release site deployment
# - deploy-site-development: for setting up the development site deployment
#
# -- PARAMETERS --
#
# The function expects the following parameters:
# $1: A string, one of release|develop, otherwise it is ignored.
#
# --- ENVIRONMENTAL VARIABLES ---
#
# The following environmental variables are required by the script, but read by Maven:
# - DEPLOY_USER: string, user for the releases repo
# - DEPLOY_PASSWORD: string, password for the releases repo
# - DEPLOY_DEVELOP_USER: string, user for the development repo
# - DEPLOY_DEVELOP_PASSWORD: string, password for the development repo
# - DEPLOY_DOCS_USER: string, user for the releases documentation site repo
# - DEPLOY_DOCS_PASSWORD: string, password for the releases documentation site repo
# - DEPLOY_DOCS_DEVELOP_USER: string, user for the development documentation site repo
# - DEPLOY_DOCS_DEVELOP_PASSWORD: string, password for the development documentation site repo
#

# Fails if any used variable is not set
set -o nounset
# Fails if any commands returns a non-zero value
set -e

v_type=${1:-}
profile_release=${2:-deploy-site-release}
profile_develop=${3:-deploy-site-development}

# The contents of the file are created
{
   echo "<settings>";

   # ----------------
   # Servers settings
   # ----------------

   echo "<servers>";

   # Release artifacts server
   echo "<server>";
      echo "<id>releases</id>";
      echo "<username>\${env.DEPLOY_USER}</username>";
      echo "<password>\${env.DEPLOY_PASSWORD}</password>";
   echo "</server>";
   # Release site server
   echo "<server>";
      echo "<id>site</id>";
      echo "<username>\${env.DEPLOY_DOCS_USER}</username>";
      echo "<password>\${env.DEPLOY_DOCS_PASSWORD}</password>";
   echo "</server>";

   # Development artifacts server
   echo "<server>";
      echo "<id>snapshots</id>";
      echo "<username>\${env.DEPLOY_DEVELOP_USER}</username>";
      echo "<password>\${env.DEPLOY_DEVELOP_PASSWORD}</password>";
   echo "</server>";
   # Development site server
   echo "<server>";
      echo "<id>site-development</id>";
      echo "<username>\${env.DEPLOY_DOCS_DEVELOP_USER}</username>";
      echo "<password>\${env.DEPLOY_DOCS_DEVELOP_PASSWORD}</password>";
   echo "</server>";

   echo "</servers>";

   # ---------------------
   # Ends servers settings
   # ---------------------

   # --------------
   # Active profile
   # --------------

   # These profiles are used to set the site repository info
   if [ "${v_type}" == "release" ]; then
      # Release version
      echo "<activeProfiles>"
         echo "<activeProfile>${profile_release}</activeProfile>"
      echo "</activeProfiles>"
   elif [ "${v_type}" == "develop" ]; then
      # Development version
      echo "<activeProfiles>"
         echo "<activeProfile>${profile_develop}</activeProfile>"
      echo "</activeProfiles>"
   fi

   # -------------------
   # Ends active profile
   # -------------------

   echo "</settings>";
} >> ~/settings.xml

echo "Created Maven settings file"

exit 0
