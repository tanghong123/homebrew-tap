class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.3.0"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.3.0/steward-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2b08a06d5bfeaf28627f6df5381dd3429427787676280744b2eccfb59cebbb4"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.3.0/steward-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e5b77e3097636b08039a2c887f6301f9bfc0fab88b98c19b2b3b130191857c6"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
