class Prov < Formula
  desc "Provenly CLI - developer intelligence at your fingertips"
  homepage "https://provenly.live"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.0.0/provenly-darwin-arm64"
      sha256 "b1a0821bc36b42a3049ec89e884f1e1897c4a7c76c7480148672a4419b084c2d"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.0.0/provenly-darwin-amd64"
      sha256 "f6b17c852679f4af4afd385014df8ccf2093235d9c28042181209fbe670e8c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.0.0/provenly-linux-arm64"
      sha256 "fc863359bedf7877645542423d0aa994ac10efeb030adcae5cab2e3be5cf72fc"
    end
    on_intel do
      url "https://github.com/devup-io/provenly-releases/releases/download/v1.0.0/provenly-linux-amd64"
      sha256 "6683f5406a5daab1d757d36476a102a4800e7a80f93aa9972a0095374b9ef5df"
    end
  end

  def install
    bin.install Dir["provenly-*"].first => "prov"
  end

  test do
    assert_match "prov version", shell_output("#{bin}/prov version")
  end
end
