class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  # macOS-only for 1.66.0: the release workflow gained this crate after the
  # tag shipped, so these assets were built from the tag and attached by hand.
  # Linux binaries arrive with the next upstream tag, whose homebrew job
  # regenerates this formula with all four targets.
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e42b986d4fcc34646fbc29fc3345cc06fdf995bc5ecc1bfc38da9b2b5f72b51f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "462bd0f297366939d0880ab992b28d15b960dd06e7ccc3c5290e3b814475c4e0"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
