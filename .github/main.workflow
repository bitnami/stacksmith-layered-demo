workflow "CI" {
  on = "push"
  resolves = ["Build Caddy Image", "Build App Image"]
}

action "Build Caddy Image" {
  uses = "./.github/actions/stacksmith"
  args = "caddy"
  secrets = ["STACKSMITH_ACCESS_TOKEN"]
}

action "Build App Image" {
  uses = "./.github/actions/stacksmith"
  args = "demo-app"
  secrets = ["STACKSMITH_ACCESS_TOKEN"]
}
