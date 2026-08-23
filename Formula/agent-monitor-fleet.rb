class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2e4e48da86a4699fe01adb48bac5ec842602cc212ab5c391016e702ff674050d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "879ed5d30442282823ecd74ca9da5eb4a12b1a367605a336be13cfdb292752ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0a20159f20bb49e715009e33444cdf37d93e9b562b76a1044752a1409d62400"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b39051a56282ec02443e692f870f6694e9fb31fc7479a10462cd2b739d373536"
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
