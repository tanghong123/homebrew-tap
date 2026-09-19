class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.280.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "675902ca7cca5a27597b9b4a0e6f4063826a67a5458976dfdb9de1d53bfdf128"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bdbe872666ae50078e68c836b2fe4c94d27a832a5936ea73e732d72704b70d47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e07af18210eff4a482d830c5aa9cf149e6cb0ca2b664d02fbf936b9bd012162c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71adb89d11e3d7464503b05e0e4e8bf49822f1aace7f28db57423c567cd22473"
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
