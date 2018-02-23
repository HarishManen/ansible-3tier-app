# ansible-3tier-OSP
This project contains 3 playbooks:
  * Provision_OSP.yml: Provisions OpenStack infrastructure and instances as required by the 3 Tier Application
  * Configure_3TA_OSP.yml: Deploys and configures the 3 Tier Application
  * Cleanup_OSP.yml: Removes OpenStack instances used by 3 Tier Application

The OpenStack environment is behind a firewall and as such the inventory is composed of the jumphost only. The required ssh configuration to allow connectivity by means of the jumphost is provided in ssh.cfg file.

## Provision_OSP.yml
* This playbook takes all its variables from osp_vars.yml file and creates all the OpenStack infrastructure needed by the 3 Tier Application:
  * OSP Networks
  * OSP SSH Keypair
  * OSP Security Groups
  * OSP Nova Flavor
  * OSP Instances

## Configure_3TA_OSP.yml
* This playbook uses in-memory dynamic inventory to provision 3 Tier Application:
* HAProxy on the frontend server to load balance between application servers.
* Tomcat on the application servers.
* PostgreSQL on the database server.

## Cleanup_OSP.yml
* This playbook is used in the even that the Provision_OSP.yml or Configure_3TA_OSP.yml playbooks fail and it removes the OSP Instances and OSP Nova Flavor.
* This playbook takes all its variables from osp_cleanup_vars.yml file.
