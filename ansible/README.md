Ansible playbook for provisioning this demo to OpenShift.

The playbook provisions all of the necessary pieces to run the demo (CodeReady Workspaces, AMQ Streams, [Kafdrop](https://github.com/obsidiandynamics/kafdrop), etc).

Each role is tagged in the playbook as follows:

| Role | Tag Name |
| ---- | -------- |
| CodeReadyWorkspaces | `crw` |
| Projects | `projects` |

By default all roles are executed, but you could only run certain roles with the `--tags` parameter (i.e. `--tags "projects"`), or skip certain roles with the `--skip-tags` parameter (i.e. `--skip-tags "crw"`).

## Deployed Resource URLs
All the below resource URLs are suffixed with the apps url of the cluster (i.e. for an RHPDS environment, `apps.cluster-##GUID##.##GUID##.example.opentlc.com`).

- [CodeReady Workspaces](https://developers.redhat.com/products/codeready-workspaces/overview)
    - http://codeready-infra.##CLUSTER_SUFFIX##
- [Kafdrop](https://github.com/obsidiandynamics/kafdrop)
    - http://kafdrop-prod.##CLUSTER_SUFFIX##
- [Twitter App](../twitter)
    - http://kraken-twitter-prod.##CLUSTER_SUFFIX##
- [Maps App](../maps)
    - http://kraken-maps-prod.##CLUSTER_SUFFIX##

 To run this you would do something like
 ```bash
$ ansible-playbook -vvv main.yml -e ocp_api_url=<OCP_API_URL> -e ocp_admin_pwd=<OCP_ADMIN_USER_PASSWORD> -e twitter_api_key=<TWITTER_API_KEY> -e twitter_api_secret=<TWITTER_API_SECRET> -e twitter_access_token=<TWITTER_ACCESS_TOKEN> -e twitter_access_secret=<TWITTER_ACCESS_SECRET> -e google_maps_api_key=<GOOGLE_MAPS_API_KEY>
 ```

You'll need to replace the following variables with appropriate values:

| Variable | Description |
| -------- | ----------- |
| `<OCP_API_URL>` | API url of your cluster |
| `<OCP_ADMIN_USER_PASSWORD>` | Password for the OCP admin account |
| `<TWITTER_API_KEY>` |`API key of the connected twitter account |
| `<TWITTER_API_SECRET>` | API secret of the connected twitter account |
| `<TWITTER_ACCESS_TOKEN>` | Access token for the connected twitter account |
| `<TWITTER_ACCESS_SECRET>` | Access secret for the connected twitter account |
| `<GOOGLE_MAPS_API_KEY>` | API key for the connected Google Maps account |

This playbook also makes some assumptions about some things within the cluster. These variables can be overridden with the `-e` switch when running the playbook.

| Description | Variable | Default Value |
| ----------- | -------- | ------------- |
| OpenShift admin user name | `ocp_admin` | `opentlc-mgr` |
| OCP user to install demo into | `ocp_proj_user` | `user1` |
| OCP user password for above user | `ocp_proj_user_pwd` | `openshift` |
| Source GitHub Repo for source code | `source_github_url` | https://github.com/edeandrea/kraken-demo |
| Source Branch in GitHub Repo for source code | `source_github_branch` | `automated-provisioning` |
