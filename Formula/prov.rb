class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.6/provenly-darwin-arm64"
      sha256 "a32470abaf1dde847d491ea4ee0dffa9a1bd8649b0e5f2389edf351521579dd5"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.6/provenly-darwin-amd64"
      sha256 "d2f4e1126c738b13c98cea8fcc9b15d418f9f89cadaa7ea01d2376da36e481bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.6/provenly-linux-arm64"
      sha256 "733c45cf0dd22d953612e2255d6f7cbb08e3628190d121ab3b3b95da220a0755"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.6/provenly-linux-amd64"
      sha256 "74a23d4c07b5810da8a32f19a34d83bdbe90027dee94444f649cf238942f2eb7"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
