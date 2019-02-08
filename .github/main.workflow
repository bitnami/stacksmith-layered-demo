workflow "CI" {
  on = "push"
  resolves = ["Caddy", "App"]
}

action "Caddy" {
  uses = "./.github/actions/stacksmith"
  args = "caddy"
  secrets = ["STACKSMITH_ACCESS_TOKEN"]
}

action "App" {
  uses = "./.github/actions/stacksmith"
  args = "demo-app"
  secrets = ["STACKSMITH_ACCESS_TOKEN"]
}
