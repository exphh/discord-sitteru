data "discord_local_image" "icon" {
  file = "icon.png"
}

resource "discord_server" "main" {
  name          = "PHH砂場"
  region        = "us-south"
  icon_data_uri = data.discord_local_image.icon.data_uri
}

# カテゴリごとにファイルを作ってもいいかもしれない
resource "discord_category_channel" "text_channel" {
  name      = "テキストチャンネル"
  server_id = discord_server.main.id
  position  = 0
}

resource "discord_text_channel" "general" {
  name      = "一般"
  server_id = discord_server.main.id
  category  = discord_category_channel.text_channel.id
  position  = 0
}

# カテゴリごとにファイルを作ってもいいかもしれない
resource "discord_category_channel" "voice_channel" {
  name      = "ボイスチャンネル"
  server_id = discord_server.main.id
  position  = 0
}

resource "discord_voice_channel" "general" {
  name      = "一般"
  server_id = discord_server.main.id
  category  = discord_category_channel.voice_channel.id
  position  = 0
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
  name        = "PHH"
  server_id   = discord_server.main.id
  # https://github.com/Lucky3028/terraform-provider-discord/pull/96 がマージされたらPR
  permissions = 2146959345
  position    = 1
}

data "discord_permission" "aaaaaaaa" {
  manage_nicknames = "allow"
}

resource "discord_role" "aaaaaaaa" {
  name        = "aaaaaaaa"
  server_id   = discord_server.main.id
  permissions = data.discord_permission.aaaaaaaa.allow_bits
  position    = 2
}
