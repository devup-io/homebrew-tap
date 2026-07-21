class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.141.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.8/provenly-darwin-arm64"
      sha256 "f6df110e5771fa9bd867890e1be01c8bb9c3865a2434be4b02b13f29166030c5"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.8/provenly-darwin-amd64"
      sha256 "6042ffa9d2f9c4f898f1d742a53a3a85c23bced64e031f865a579d1f7804b16a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.8/provenly-linux-arm64"
      sha256 "9cc87b09964d7db926d29c548bc7aba1b57518bbd904c1709d54b4c0baa905a1"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.141.8/provenly-linux-amd64"
      sha256 "b00641a1d50d781c99274c0569ed51524fa3b90f5c268c7f1f78129f3a49182d"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
