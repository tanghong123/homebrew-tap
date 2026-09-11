class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.255.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "60552526a1b3be88ae3639ca30a9ef47884702fe18a0f480335e8cc3419da5f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d2dafdf2e094dcc3b1d0fd6421c2e99858a6fa57f3a21162011c90ed03df0311"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "556d3afb29917a70214db1c7a1dd939c299803cb13d95b35012b9b3692b359d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c27c91d30b73b2b657c33765fdf12dda3719e7f9d36e6462598bd6ffa1e1a85"
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
