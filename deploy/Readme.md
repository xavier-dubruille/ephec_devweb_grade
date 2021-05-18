
Run script 'build-n-deploy.sh' (go there for configuration):
1. it will build and deploy
2. it will run remote.sh on remote
==> assumption : nginx is installed/configured (and git + rsync + docker are also installed)



Improvements:
- instead of bash scripts, i could use ansible (and have it in a docker for easier deployment ?)
- currently, i suppose i've, on the remote, nginx + git (+docker) :
  - I could stop using git by publishing everything in a docker hub
  - I could put nginx (+config) in a docker, but i'm not sure how practical it would be (specially if there is several project)