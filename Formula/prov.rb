class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.3/provenly-darwin-arm64"
      sha256 "fb07b85122c0d8db3404fd0c3c82e8df9f15b550bfb694c7140f2687adc198f3"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.3/provenly-darwin-amd64"
      sha256 "8ec0f4aeb82de124fcae1769fcc7ec7b58ef4cb8f0497c1a53d2714ee298f877"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.3/provenly-linux-arm64"
      sha256 "69d6f426554bba991d0c2b313980932f50dc8b00b6696bc95cd0ac591e80e374"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v0.1.3/provenly-linux-amd64"
      sha256 "d343b404b664d1ee8d19726d4eab9d809e49f0d188408ee9afc43d27b349d186"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
