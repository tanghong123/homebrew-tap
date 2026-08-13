class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.67.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "357e590bb2730aff5e861b746b4fd1f936b8ee332772f45bb2e3d3f63ae3eea5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a0b71ebd1a3c74c3ee08a63ad67bdd8b45e0702d6c7e95757e4171e59af5c419"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8088b5bac21b242e5957ded1d10309549aea76bca00e72cc8daf1bdd0ea9e0c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a3be9dded69029c50b23c558d3cdb929a9ba3b5c05ad4338b6457eb45a6584f"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
