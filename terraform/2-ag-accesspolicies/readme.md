# Access Groups and Access Policies Creation

The objective of the tile is to create the Access Groups and Access Policies in IAM using terraform scripts.


## Access Groups

Following are the access groups for default sandbox environemnt.

```
    CLOUDMANAGEMENT-ADMINS
    APPDEV-ADMINS
    APPDEV-ENVIRONMENT-ADMINS
    APPDEV-USERS
    INTEGRATION-ADMINS
    DATA-ADMINS
    AUTOMATION-ADMINS
```


## Access Policies

For all ADMIN groups 

```
-   Editor, Manager role on all IAM Services in all Regions in Resource Group - 31
-   Viewer role on all IAM Services in all Regions in Resource Group with Atrributes  - 10
-   Kubernetes service in all Regions - 45
-   Container Register in all Regions - 64
```

For all USERS groups

```
-   Viewer, Manager role on all IAM Services in all Regions in Resource Group - 12
-   Viewer role on all IAM Services in all Regions in Resource Group with Atrributes - 10
-   Kubernetes Service service in Resource Group - 34
-   Container Registry service - 21

```
