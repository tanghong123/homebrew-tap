class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.4.3"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.3/steward-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "538d1887b255e7bc72cb3d6d1c9f7fc08eb63f36548042d07b63c77c71f1972b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.3/steward-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "c8d3dcbb41fd087f8052a47abb7f681a5818ed74b21353d7109eead91375ae7c"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
