# Access Groups and Access Policies Creation
The objective of the tile is to create the Access Groups and Access Policies in IAM using terraform scripts.


## Access Groups

Following are the default values for access groups for sandbox environemnt.

## Access Groups - Admins
```
    CLOUDMANAGEMENT-ADMINS
    APPDEV-ADMINS
    APPDEV-ENVIRONMENT-ADMINS
    INTEGRATION-ADMINS
    DATA-ADMINS
    AUTOMATION-ADMINS
```

## Access Groups - Users
```
    APPDEV-USERS
```
However, users can provide access group names as per their requriement. After opening the tile, expand the section **Set the deployment values** and provide values for all the parameters. The input value for all the parameters except **region** has to be a list separated with comma and no space in between. Any number of items can be provided in the list at once. The input value for parameter **region** is a string.

After setting the parameter, click on **Install** to create the access-groups and corresponding access group policies. The Schematics workspace gets created and executed to create the IAM resources. The logs for resource creation can be seen in Schematics workspace.

**Note**: 
* Access group list and correpsonding Resource group list should be in sync accordingly. If there are n number of access-group names, there should be n number resource-group names which correspond to those access-group names in the same order. This is important to have access-policies defined appropriately. 
* The input value the parameter **region** has to be the exact name of the region as it appears in the IBM Cloud. This is important to have the defined policy work as expected. 

## Access Policies

Following are the access policies defined for all ADMIN groups 

```
-   Editor, Manager role on all IAM Services in all Regions in Resource Group - 31
-   Viewer role on all IAM Services in all Regions in Resource Group with Atrributes  - 10
-   Kubernetes service in all Regions - 45
-   Container Register in all Regions - 64
```

Following are the access policies defined for all USERS groups

```
-   Viewer, Manager role on all IAM Services in all Regions in Resource Group - 12
-   Viewer role on all IAM Services in all Regions in Resource Group with Atrributes - 10
-   Kubernetes service in Resource Group - 34
-   Container Registry service - 21

```
