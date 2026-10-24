class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.2.0"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.2.0/steward-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "db91b04310ba342305fb83fa453c3b609e06e32a8c8d372739dbf9d9a732f39b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.2.0/steward-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1f3d3d9d1c60529812f4969ac72da132550c8f4e9a80a72190f37611ec8f6342"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
