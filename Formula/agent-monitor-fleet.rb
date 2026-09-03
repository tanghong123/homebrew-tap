class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.130.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "25f0bd2c9e5339f83cbdc79928a07081ded7170845aa4c642b6420b80b893209"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cfedf97f54c704fe1f7fd0f75e7ef91c5cf51aabf460bbfd72e9cbe65e5f63be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a9a4c8cd6bbfd765bbf5e239eb0decac080ebaccf0d8cfdd9e648f5bd8f12bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2eddf3937fbdee8abe8673f486a7735d9350dbb04fefbea9122b9abe99b24ddb"
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
