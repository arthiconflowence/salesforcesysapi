#!/bin/bash
#This script takes the required parameters to deploy an API
#
#########System Parameters########
muleVersion="4.2.2"
userName="REPLACE_BY_USER"
password="REPLACE_BY_USER"
applicationName="REPLACE_BY_USER"
environment="REPLACE_BY_USER"
businessGroup="REPLACE_BY_USER"
visualizer="system"
workerType="REPLACE_BY_USER"
clientId="REPLACE_BY_USER"
clientSecret="REPLACE_BY_USER"
workers="REPLACE_BY_USER"
region="REPLACE_BY_USER"
###################################
#
##########Application parameters########
sfdcPassword="REPLACE_BY_USER"
sfdcToken="REPLACE_BY_USER"
encryptionKey="REPLACE_BY_USER"
########################MAVEN DEPLOY COMMAND#######################################
##########################Get Artifact from target folder##########################
artifact=`ls -l target/*.jar | cut -d"/" -f2`
artifact=target/`echo $artifact`
mvn mule:deploy -DmuleDeploy -Dmule.artifact=${artifact} -DmuleVersion=${muleVersion} -Dusername=${userName} -Dpassword=${password} -DapplicationName=${applicationName} -Denvironment=${environment} -DbusinessGroup=${businessGroup} -Danypoint.platform.visualizer.layer=${visualizer} -Dregion=${region} -Dworkers=${workers} -DworkerType=${workerType} -Danypoint.platform.client_id=${clientId} -Danypoint.platform.client_secret=${clientSecret} -DencryptionKey=${encryptionKey} -Dsfdc.password=${sfdcPassword} -Dsfdc.token=${sfdcToken}
