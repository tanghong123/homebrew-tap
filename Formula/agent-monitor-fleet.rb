class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.163.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5c23b656abee7da3c8d1725faf21b6fec4a0c594e84ae3e3463f819263f85609"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "989c22f39446b7a1e9b94429b08ab36259d464bc43fee4280d1541522bd5d49d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dac560900081ea6cd9e9f7b7d152a0fcf12e5af91906cd5eb1088771b36ff7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0544c4fdb1b1e69da0a9317f527733005288893ea9837b5cad41417679ede9c1"
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
