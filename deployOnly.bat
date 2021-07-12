@ECHO OFF
REM This script takes the required parameters to deploy an API
TITLE Mule Deployment using Maven
:: ######## System Parameters#########################################################

echo  #######################################
echo  #### Script to Deploy the Jar file ####
echo  #######################################


echo  #### Setting the system paramters  ####

SET muleVersion="4.3.0"
SET userName="arthiks"
SET password="Iskavsda@01"
SET applicationName="ar-salesforce-sys-api-07082021"
SET environment="DEV"
SET businessGroup="software-88"
SET visualizer="system"
SET workerType="micro"
SET clientId="c54d7c33d32a49e9ad2d574f127782c9"
SET clientSecret="c54d7c33d32a49e9ad2d574f127782c9"
SET workers="1"
SET region="us-east-1"

:: ##############Application parameters############################
SET encryptionKey="68Be4266F08247D580b3589587618B90"
SET sfdcPassword="Iskavsda@01"
SET sfdcToken="gSPV1pooq64e3WWzswpX3GDhf"
:: ##########################Get Artifact from target folder##########################
for /f %%i in ('DIR /b target\*.jar') do set artifact=%%i
SET artifact=target/%artifact%

:: ########################MAVEN DEPLOY COMMAND#######################################

echo  ####  Deploying the Jar %artifact% using bellow command  ####

mvn mule:deploy -DmuleDeploy -Dmule.artifact=%artifact% -DmuleVersion=%muleVersion% -Dusername=%userName% -Dpassword=%password% -DapplicationName=%applicationName% -Denvironment=%environment% -DbusinessGroup=%businessGroup% -Danypoint.platform.visualizer.layer=%visualizer% -Dregion=%region% -Dworkers=%workers% -DworkerType=%workerType% -Danypoint.platform.client_id=%clientId% -Danypoint.platform.client_secret=%clientSecret% -DencryptionKey=%encryptionKey% -Dsfdc.password=%sfdcPassword% -Dsfdc.token=%sfdcToken%
PAUSE
