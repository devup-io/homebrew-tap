class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.5/provenly-darwin-arm64"
      sha256 "04e8fbbc3c8a6eeb0a7d62b9572040b2d37088065ef1f0004913a359cb274ad7"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.5/provenly-darwin-amd64"
      sha256 "49fddc7a6ad4cddc7f696f664041e7f9c43539e7ac047dfb52f0d7687ae92313"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.5/provenly-linux-arm64"
      sha256 "592eff0518d42bbfd2bb7eafc2ad7b18ed1a9598b2ef29bccfef2fbde049198d"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.5/provenly-linux-amd64"
      sha256 "292dc24c6fd3166f40284749ad56fa9a48e6f369e76976cbff4cd30ca594b5cc"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
