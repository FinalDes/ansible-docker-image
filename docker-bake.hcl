group "default" {
  targets = ["ubuntu2404", "ubuntu2204", "ubuntu2004"]
}

target "base" {
  context = "."
}

target "ubuntu2404" {
  inherits = ["base"]
  dockerfile = "Dockerfile"

  tags = ["ansible-ubuntu-image:24.04"]
  args = {
    IMAGE_TAG = "noble-20260210.1"
  }
}

target "ubuntu2204" {
  inherits = ["base"]
  dockerfile = "Dockerfile"
  tags = ["ansible-ubuntu-image:22.04"]
  args = {
    IMAGE_TAG = "jammy-20260210.1"
  }
}

target "ubuntu2004" {
  inherits = ["base"]
  dockerfile = "Dockerfile"
  tags = ["ansible-ubuntu-image:20.04"]
  args = {
    IMAGE_TAG = "focal-20250404"
  }
}
