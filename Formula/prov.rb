class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.2/provenly-darwin-arm64"
      sha256 "61da70dcd49b64dc99d89bb71626b7a1d197259364b80027160b0960021ddea7"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.2/provenly-darwin-amd64"
      sha256 "b9492fce3d28b377da201037a033c876a13a5684cc765e74f5ded895b0586935"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.2/provenly-linux-arm64"
      sha256 "73075f53dde37a2326f9d04e73923adc9491bf9f6f1aa2642d22089d15afc8da"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.2/provenly-linux-amd64"
      sha256 "d099e34b4d7456e22dce40474a3bf9e261f3363afd3a71413e4d7dfe2781f2cf"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
