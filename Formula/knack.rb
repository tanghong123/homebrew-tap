class Knack < Formula
  desc "One library of coding-agent skills, projected into every agent you use"
  homepage "https://github.com/tanghong123/homebrew-tap"
  license any_of: ["Apache-2.0", "MIT"]

  # Only an Apple Silicon build is published so far. Without these, an unsupported
  # platform fails with a confusing "no url" rather than saying what is wrong.
  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/knack-0.1.0/knack-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c841f47863253c62a26c80d6881ce4a24082054e4acca3bfdb0be5c03d349b06"
    end
  end

  def install
    bin.install "knack"
  end

  def caveats
    <<~EOS
      knack shells out to the system git for anything networked, so git must be on PATH.

      Getting started:
        knack lib doctor --init     # register the agents on this machine
        knack lib doctor            # check the installation
        knack lib list
    EOS
  end

  test do
    assert_match "knack #{version}", shell_output("#{bin}/knack --version")
    # The command catalogue is what the bundled companion skill introspects, so a build
    # that starts but cannot produce it is still broken.
    assert_match "knack lib import", shell_output("#{bin}/knack lib help --json")
  end
end
