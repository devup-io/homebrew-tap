class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.0/provenly-darwin-arm64"
      sha256 "d1eacc522502ad70185a4b5b696ba38eb435dd4e882e8c769e6c8f7208f63dce"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.0/provenly-darwin-amd64"
      sha256 "3d8f9b2d538dd1907872a0e0f373b7925bc38f43e12e68bdc6b7aab7999285f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.0/provenly-linux-arm64"
      sha256 "1bf32391503cce051a5daa8f2a0ce037a7ba46547af96036e76a2ced13a511fb"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.0/provenly-linux-amd64"
      sha256 "3313bd5ea8902a0529db257d46fb517f07de517d5f41b5c5c68792e997a10a4b"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
