class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.85.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "78b979a25d4c248862e2cb9e923da5d50e9b9040aa2ddf4f40ec96aeecd1518b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "266f7e123373f6ce1d92d45578b96b09eea6e74ec3f04af02d77d029b83f9257"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd08bfc5c8949f56191cab43ad318070b4ece7a76b2083f3be2559193ef3231c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e782bc216b49d1cc2e7731517d0cbd64dcb0ec7714ab8d1790398795fe9067af"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
