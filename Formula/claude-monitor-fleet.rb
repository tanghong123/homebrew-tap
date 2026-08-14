class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.71.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2791b0c56e44a076512514dc85c520669a6e73b96ddb5b6b7b49634f73dc0879"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "77a7dc4aa0cdfeffffaee4fe1b864472e98e68f4aa4312f876aef59379c7aaab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b1830372fa2e3c0501714d8896cba6ccb5e291b62208f0b7e8f6ab86a704d86"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf686a67c6241ed574e566b9ef640daaa9b465e4091290d6a1034ddb471b2962"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
