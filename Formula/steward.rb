class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.4.0"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.0/steward-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ebfd5a2eba0a94a98b7daccfc69889d61030c63bb11e0312aa7af494385e35c"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.0/steward-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "6cc36a6e899b8a9f84d33e64ebe1bc8cf1429ddc511f8e3f1148891054926378"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
