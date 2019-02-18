workflow "Build and Deploy" {
  on       = "push"
  resolves = ["Shell"]
}
action "is-tag" {
  uses = "actions/bin/filter@master"
  args = "tag"
}
action "Shell" {
  uses = "actions/bin/sh@master"
  needs = "is-tag"
  args = ["ls -ltr"]
}
