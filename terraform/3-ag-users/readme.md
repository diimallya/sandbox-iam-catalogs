# Assign users to Access Groups

The objective of the tile is to assign users (email-ids) to the Access Groups in IAM using terraform scripts.


## Email Ids

User can enter email-ids for ADMINS and USERS in bulk. They will be assigned to the below mentioned Access Groups.

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

If you have created different access-groups than the above mentioned default access-groups, you can provide the names of those by expanding the section **Set the deployment values**. Provide all Admin access-group names in `admin_access_groups` parameter, User access-group names in `user_access_groups` parameter, email-ids to be added to the Admins access-group in `admin_ids` parameter, email-ids to be added to the Users acess-group in `user_ids` parameter. All values have to be in a list format separated with comma and no spaces in between. 

After setting all the parameters, click on **Install** to assign users to the access groups. The Schematics workspace gets created and executed to create the IAM resources. The logs for resource creation can be seen in Schematics workspace.
