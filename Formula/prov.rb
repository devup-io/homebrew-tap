class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.141.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.9/provenly-darwin-arm64"
      sha256 "72419c65268e9e4639903fd066b60b9c3a5a2604539b9bf4c5cd74c2491aa736"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.9/provenly-darwin-amd64"
      sha256 "6bbdbdd573af16d89494fe6815c884fa7c4afae2b5990910843e3296aba967e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.9/provenly-linux-arm64"
      sha256 "75a4915621321914996d6ecc1969f69e063eef641de23062d4333705bac77691"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.9/provenly-linux-amd64"
      sha256 "1983f9f4fb4fae17432707b4e30708af700276cf0a7734682cc64bb35880cb63"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
