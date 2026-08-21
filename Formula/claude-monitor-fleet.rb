class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0ae1f91589a57e007b82301d64c85f2ab0be823316721f455b7b09bc2675f2b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "581246063d1e8f363ec47c3a7930c9f50753541d28e99e2ed7715141675523a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "910ada751db75afa95f23895482f696bd3eec4b04b5aa16f703413a3cfcf599e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d6d513547656c7708d16d6c93a755850f84b482bf309a33574274d281dd8af5"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
