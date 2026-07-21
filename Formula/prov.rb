class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.141.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.7/provenly-darwin-arm64"
      sha256 "37f264e329d46a9a8d6166e36f22612d23e47599cf703e0e1d294b27859a019b"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.7/provenly-darwin-amd64"
      sha256 "80fa67dd49eccfb2f41a11a80254d2ece0f2a54518dee5aa6d9bd076994a3727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.7/provenly-linux-arm64"
      sha256 "d6173921251448a95efb576131aaecfd8cb8246cb80bd19431d2cf24b5a75b37"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.7/provenly-linux-amd64"
      sha256 "8705ec219b205140f268668c2a89c9f15b050fe66d9834d92c7480f45840b2a9"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
