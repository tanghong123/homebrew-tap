class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.366.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "08e403b47efd3cae532dbbab2574884473a60b824e57afac32d2b6d4d11bda03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5667ada0af1ea289e54d37f848984a65e6d70b97f5b50cde633274a782ac3b8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9f6f3ba4de3cef90a94fe2a13686f38d8492cc00124ea70c1bb29411e611db9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53c5094f70eeeff8ef78a3604dd4b045c60f0da64b1bac4d16149e673d1c99da"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
