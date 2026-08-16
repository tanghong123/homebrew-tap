class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.89.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d16e8f624936a6c84beb0838ee52d3c911f94cef07b2a7132da513102fdd11a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "81591572e3ad14500e4e192f0981bcc2a1e0ffb02878d0c8b276bd2f14411a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f9f5297f0a0be5aa7df234117f2a35020e35c45ff380e5790fcbd157fbbbb2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c57df3595dc037278bf976d7ae6293b4c3ab3817ae38edf992abd5dc710524f2"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
