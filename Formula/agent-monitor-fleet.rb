class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.557.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4602d5780b43390f595c573e6bc571819600b2d0e6be54857813ee3699233803"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6a2954bae323d7ea44f94a1882e5df7c8c8842884c1e3657cfffce9d7f9decfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77f14cf3be7d41214ddb18262eb5375141288e148542ae430ebb91ed5ffb578d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a26075fab97db5873d6f23645cbd110981c19e3a87012a6d1b9734d9ee10f48"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
