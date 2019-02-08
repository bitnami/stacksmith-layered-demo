workflow "CI" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "./.github/actions/stacksmith"
  args = "demo-app"
}
