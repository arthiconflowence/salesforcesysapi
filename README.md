# salesforce-sys-api

This is a System API.This API is used to query,update,insert,upsert the Case Object.API uses Salesforce connector to connect to Salesforce for CRUD operation.Two API methods are implemented for Querying Case Object and Updating Case Object.Username,password and token is used to connect to Salesforce.
# Prerequisite Setup

 - Add the Salesforce credentials to the properties file.Add username to the properties file.Encrypt password,token and add it the {env}-secure.yaml file under respective property.Where env is LOCAL,DEV
 - Create the following custom fields in Salesforce Case Object.
       External_Comments__c,External_Status__c,External_System_Last_Updated__c,External_Owner__c,External_Priority__c

# Installation Instructions For Studio


- Clone the project using any Github client or Anypoint Studio Git plugin.
- Import the project into workspace.
- Modify LOCAL.yaml properties appropriately.
- Studio --> Right Click  on Project --> Run As --> Run Configurations , Navigate to Arguments tab, in VM arguments enter the following

           
           -M-Dmule.env=LOCAL
           -M-DencryptionKey=(use your encryptionKey) 
           -M-Danypoint.platform.gatekeeper=disabled
           -M-Dsfdc.password=(Replace with Salesforce Password)
           -M-Dsfdc.token=(Replace with Security Token)
           
           
- Click on Apply Button.
- Run the project.

# Deployment Instructions For CH

- API Manager:
     
     Refer here to create API definition: [accelerator-documentation/files/api-config.md](https://github.com/mulesoft-labs/accelerator-documentation/blob/master/files/api-config.md)

- Runtime Manager :

   Use the following Maven command to deploy application to Cloud Hub, replace '**' with appropriate values
   
mvn clean package deploy -DskipMunitTests -DmuleDeploy -DmuleVersion=** -Dusername=** -Dpassword=** -DapplicationName=** -Denvironment=** -DbusinessGroup=** -DworkerType=** -Danypoint.platform.client_id=** -Danypoint.platform.client_secret=** -DencryptionKey=** -Danypoint.platform.visualizer.layer=system -Dsfdc.password=** -Dsfdc.token=**
