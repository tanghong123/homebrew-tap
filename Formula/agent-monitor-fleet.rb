class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.571.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8be463f4bac823cb62f059a38edf38999d382aa7f6b961389830e591bced7fc7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "924288cd401728352481829e3fda776092857a322a0b14703efffca8552776bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb6536bd98c30f59e8e16d6a8d70d25c65c831d75bb5d8e02235db3c38423ef7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ceb84f079b918ec1c84a14ea529f97a6c979f9edc4a19b19937ca1f0d32359ef"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
