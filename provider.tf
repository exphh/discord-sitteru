terraform {
  required_providers {
    discord = {
      source  = "Lucky3028/discord"
      version = "1.3.0"
    }
  }
}

provider "discord" {
  token = var.discord_token
}
