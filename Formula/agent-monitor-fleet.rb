class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.566.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ac18cf12feb256e94db3ea54877870e6c52587c57dc4213d117a23fc566131cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cfdff4ad002354b3cc5d9301ea66f490a367e1e01d3c18f60ae5479ea6abbe3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27157cccbc7ea0ed75a0745bd1611146a4db2a07a2fc543653ea162f29cb527b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5d33881d3b7d1eb8df25cdc7cb9e57c94c05b60a3a8cbcb28f47d360eb25ff2"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
