class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.1/provenly-darwin-arm64"
      sha256 "90ba1c31ad1b785ee0d6c6ccf617efc4e643bf4d0e94bbaf132fe55053ae3ff6"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.1/provenly-darwin-amd64"
      sha256 "d1bc2e9df9677c50b6f047e013312075a92aa1d68cca378137da042e9952257e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.1/provenly-linux-arm64"
      sha256 "4834bda3e614f7027aa984dd675d967c3a595ccbd2a11d810dd3effa7329731a"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.1/provenly-linux-amd64"
      sha256 "f36941a30cf90723d519d0aa5fc20a4feedb7b84cf0f336b6ada2695bb0fe584"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
