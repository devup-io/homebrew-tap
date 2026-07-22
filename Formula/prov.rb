class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.4/provenly-darwin-arm64"
      sha256 "ce15c7dea4cef05c3f3f618e5fc1d93f92613985d72f022da6070ea56830e2d1"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.4/provenly-darwin-amd64"
      sha256 "83c16ce8a7803f57f4d3e7140f19592153bed89a1aacedef08aaa7ce3ffef3c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.4/provenly-linux-arm64"
      sha256 "631b00945f6170979db52b225a4ff9cdd3731eabd68e14a4bc9d85d953a70389"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.1.4/provenly-linux-amd64"
      sha256 "e7bdb3b51b78a626c1efba44cb9cfabdd440de726b90d90c5ec4e5ac59703e2d"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
