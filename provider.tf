terraform {
  required_providers {
    discord = {
      source  = "Chaotic-Logic/discord"
      version = "0.0.1"
    }
  }
}

provider "discord" {
  token = var.discord_token
}
