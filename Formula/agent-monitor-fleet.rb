class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.441.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6e51ca6ccad234f8d0df125d06066226fbfc9c98cb0078ab6f6040014b482a49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "812df4449318ef001d093ee77eb3b31c08d679f0ab98ddd163fcaaecd75632ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd10578a4268299c2eb5ce9d7e02d349625bb2ecdaa585db244f7fa2470ada36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de589d3b087b8afffcbe40b418d9f7f519b9fb42247fad4cf5caf162fce3af17"
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
