#!/bin/sh

secrets \
    --canonical-host github.com \
    --canonical-organization nextmoose \
    --canonical-repository secrets \
    --canonical-branch master \
    &&
    ssh-remote \
	--remote upstream \
	--host github.com \
	--user git \
	--port 22 \
	&&
    ssh-remote \
	--remote origin \
	--host github.com \
	--user git \
	--port 22 \
	&&
    ssh-remote \
	--remote report \
	--host github.com \
	--user git \
	--port 22 \
	&&
    project \
	--upstream-organization rebelplutonium \
	--upstream-repository nixos-configuration \
      	--origin-organization nextmoose \
	--origin-repository nixos-configuration \
	--report-organization rebelplutonium \
	--report-repository nixos-configuration \
	&&
    true
