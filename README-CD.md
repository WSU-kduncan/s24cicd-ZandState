# Documentation Project 5 Part 1
  - Overview
    - What
      - In the workflows `main.yml` file we are now implementing semantic versioning with a `major` and `major.minor` verison. This now allows me to keep versions of my image as changes are made along with the `latest` version. The workflow runs when a version/git tag is pushed in a specifed format, `v*.*.*`, this then pushes my image along with the version/tag to Docker Hub.
    - Why
      - This concept of tags and versioning are image allow us to show someone who pulls my image that there is development being done and there are diffrent versions of the container image. The tag for the image is the version and depending on that version there is diffrences between the images whether it be a major, minor, or patch difference.
    - Tools
      - All you need is your workflows `main.yml` file from Project 4 and you need to use the `git tag` command to make tags. Finally you need a GitHub action called `docker/metadata-action` which will allow you to configure and manage your semantic versioning.
  - Generate tags
    - In Github to make a tag you need to use `git tag -a v*.*.* -m "msg goes here"`. Make sure the `v*.*.*` portion matches the workflows `yml` file tag formating under `on:push:tags:`. Once the tag is made do `git push origin v*.*.*`.
  - Behavior
    - The workflow currently runs whenever there is a tag that is pushed to the git repo. Once the tag is pushed it checkouts the main branch, uses the Git Action docker metadata action for getting the docker image tag/verison, logs in to Docker Hub, and finally builds and pushes the images with the tagged verisons.
  - [Link to my Docker Hub Repo](https://hub.docker.com/repositories/isolat3d) 

# Documentation Project 5 Part 2
  - [How to install Docker on AWS Instance/Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  - Docker Image Container running in AWS Instance (shows the eip of instance as proof):
    - ![docker installed](./images_Project4/eipofamazoninstancerunning.png)



# Resources
 - https://semver.org/
 - https://git-scm.com/book/en/v2/Git-Basics-Tagging
 - https://docs.docker.com/build/ci/github-actions/manage-tags-labels/

# Personal Note to Self
DO NOT FORGET THE `|` in the `docker/metadata-action`
