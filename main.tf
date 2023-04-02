data "discord_local_image" "icon" {
  file = "icon.png"
}

resource "discord_server" "main" {
  name          = "神"
  region        = "us-south"
  icon_data_uri = data.discord_local_image.icon.data_uri
}

resource "discord_role_everyone" "main" {
  server_id   = discord_server.main.id
  permissions = 67042396327489
}

data "discord_permission" "admin" {
  administrator = "allow"
}

resource "discord_role" "admin" {
  name        = "admin"
  server_id   = discord_server.main.id
  permissions = data.discord_permission.admin.allow_bits
  position    = 3
}

resource "discord_role" "phh" {
  name      = "PHH"
  server_id = discord_server.main.id
  # https://github.com/Lucky3028/terraform-provider-discord/pull/96 がマージされたらPR
  permissions = 2146959345
  position    = 1
}
