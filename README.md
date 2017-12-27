# Docker container for Plex Media Server with pCloud Console Client

# plex-pcloud
Docker using base official docker for Plex Media Server [plexinc/pms-docker](https://github.com/plexinc/pms-docker) with [pCloud Console Client](https://github.com/pcloudcom/console-client).  Use pCloud over other cloud storage options.

# Usage
Before you create your container, you must decide on the type of networking you wish to use for Plex.  Please reference [Plex's networking usage](https://github.com/plexinc/pms-docker#usage) for more information.

There is an included docker-compose template for Plex host networking included in this repository.

## Parameters
Please reference [Plex's parameter usage](https://github.com/plexinc/pms-docker#parameters).

## pCloud Password
Create a pCloud password file without any newlines.  This file will be a docker secret and the password may be deleted from the file after the initial container run but the file must remain in your designated location.
