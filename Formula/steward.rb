class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.1.0"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.1.0/steward-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "05788b111117532742e7c6b877f63fdd368106158abc274ee5426c75b52e0330"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.1.0/steward-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bdc62f5cf9e31f5557a540f3cff358109e29082602f001e9afed7bb83c51b3be"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
