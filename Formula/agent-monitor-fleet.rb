class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "20be8f35e30c5db4b65690f90ac16b20c8708d036fe799427a9c229d9845556b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b052a183acddb9bc7898504a6053a3e1d0aa86114c621320b8f73a98095be866"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "804e2ddbf46cd96c57c641092f989d4077c41ee4a0e744f7b1fff329f44b143a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "123f1c151580bac8f75c1ae0496b3678cfafa17f5e258a4b57a15d793604fb88"
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
