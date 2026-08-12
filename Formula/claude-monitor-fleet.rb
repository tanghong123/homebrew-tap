class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "87978cf84cf72d29ec7b91a28b353c86799d6d681c11b492a5cf59664ab8a657"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "eb762e3f0eb3fbb13f593ead0330585a1a499cb1b06a373b02e3ba5c9dafc9ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "894649e9c142c3b7f999aeb0abbbc33e8a117563b1e1a59b75419b2788a200f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f05fbaccd0f27e091aa3c3968b032a8d9af8d157d677865d38aa75d82fa5840"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
