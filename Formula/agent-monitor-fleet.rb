class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.554.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3cc85dccee4757ccbaafd8c63336b8da7135436ecfd0ddf25b825853e6aebd92"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "500bb7f9fa1f4629731ca355f8105bfaf9d2797725838a8eb08c37236b2edf95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be822c3b6bd165533d195f16a34dd74ab1f1c9f226be6514925ecf00108e5b5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "515ad116f5281a71cb1f36771906f1edacd12ded4da3ada0f5dbe7898c1ee37d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
