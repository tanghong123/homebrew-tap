class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.4.2"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.2/steward-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "205ed32baf8c2912b05fa217903f9fde23ed748938f4dc1f816e21b50cb0f67a"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.2/steward-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "6b058dcd365edc68cd0574c44ce41348f53d52ba86b9256b8ee49afd7ce73c84"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
