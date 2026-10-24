class Steward < Formula
  desc "Check a dev box against a plan's step headers"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.4.1"

  # Binary-only distribution: the source repository is private; prebuilt binaries ship as release assets on this
  # tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.1/steward-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "a27a974acf5dd082534a5dc6c2614c6c759612417296a172b809314fee017976"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/steward-0.4.1/steward-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "c93634e4a37259440351b759d8baba8a2450d537800c39a61328f3f073b75692"
    end
  end

  def install
    bin.install "steward"
  end

  test do
    assert_match "steward #{version}", shell_output("#{bin}/steward --version")
  end
end
