class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.0/provenly-darwin-arm64"
      sha256 "9681ada84aec2ada63a6fd395747b7973a17e1e9b34701ef23742e9e7d3e0c3c"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.0/provenly-darwin-amd64"
      sha256 "6499a60549b6fe9518606cb2d3be82a8d1d31dce154d05a0abd714f9453b4068"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.0/provenly-linux-arm64"
      sha256 "b13ed948bc22ae8eda0b583d4cab879b1a9fca8e0543abcb7703d81d580245cb"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.0/provenly-linux-amd64"
      sha256 "2ad01bf7479973a2818de07dc9c65ca8e4b25acf19062add063bcec3c42eda6c"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
