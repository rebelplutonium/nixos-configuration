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
    read-write-pass \
	--upstream-organization desertedscorpion \
	--upstream-repository passwordstore \
      	--origin-organization desertedscorpion \
	--origin-repository passwordstore \
	--origin-branch master \
	--report-organization desertedscorpion \
	--report-repository passwordstore \
	--committer-name "Emory Merryman" \
	--committer-email emory.merryman@gmail.com \
	&&
    true
