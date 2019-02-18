workflow "Build and Deploy" {
  on       = "push"
  resolves = ["Shell"]
}
action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@master"
  args = "tag"
}
action "Shell" {
  uses = "actions/bin/sh@master"
  args = ["ls -ltr"]
}
