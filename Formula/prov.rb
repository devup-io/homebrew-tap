class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.2/provenly-darwin-arm64"
      sha256 "45423757c72ee42b977839e564506616a9cbdee000696bf299dece4918638354"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.2/provenly-darwin-amd64"
      sha256 "6f627a92ddeef351578cc41dde633976fca682d7d6cff212cbc8608ac309929a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.2/provenly-linux-arm64"
      sha256 "77581c85c3310c3671ef4fe37cbfdc434da572080c563fd719c4dd0b76208707"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.2/provenly-linux-amd64"
      sha256 "c494a82f7b05bc639c79d98682b60189ad7ff03decda038aba3e35c91c190ab0"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
