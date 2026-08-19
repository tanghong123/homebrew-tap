class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.95.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b8882850dbd6b8b6c0ba1cea1142c9d1e281aa0bcde0be2e1f695b95dac9e00b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d9d16182c84a531684947326335c823814e95aa0aec5e27b675fb4a61763a0e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "298d519940a25b9f29ce151f18325efa68230289cc245cb1a91a5e19ab126bfd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eda8cd1096c59503f7643b980d061abeda0617ea2ef249ef2e021d7639087bb2"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
