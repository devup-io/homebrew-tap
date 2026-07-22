class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.7/provenly-darwin-arm64"
      sha256 "67b97f627d3ee5d6f9f3aa144b678b19388b5cdba2ec36f6aa66a78383107964"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.7/provenly-darwin-amd64"
      sha256 "3ef45cc0bc8f4cd819c39079754b07867b1668b8f6aa8fec2297b79101eee279"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.7/provenly-linux-arm64"
      sha256 "54d3ad2e43476d889043e5a6d00abdd2b4f82dd10e34863736976d159d49da59"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.7/provenly-linux-amd64"
      sha256 "5b3b512d18acf88c2bea04d88f2c2696b6bd7746d03431f70f23f4762c9c308a"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
