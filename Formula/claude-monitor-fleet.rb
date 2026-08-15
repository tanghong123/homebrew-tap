class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.80.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bd1dfa99b8db4cd2dc71872231a6a5c01cbc6c59e88ae404044059b9626a5519"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0968347b292d7767ef4f6529e5ea066d53e040ff1f65dbea352dd457ed90d5cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a1cd742109125f14512bb45cf2fc34fb27b0975443f591f51a8cf1cc748fe6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3544313eefe20a90ca84a1eb73414687f6814b04d78ec22c249b278f47b96bd3"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
