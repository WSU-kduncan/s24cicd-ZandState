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
    - The  
    
# Resources
 - https://semver.org/
 - https://git-scm.com/book/en/v2/Git-Basics-Tagging
 - https://docs.docker.com/build/ci/github-actions/manage-tags-labels/

# Personal Note to Self
DO NOT FORGET THE `|` in the `docker/metadata-action`
