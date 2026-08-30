class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.117.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b20e48321d6658c8acbaf402e34a46cac58532791dfba5a8ef1429a7eff046b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "aa64785eed82a403063aab72610f307eddb662d5447f5dad8da137009fe25e7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e9ff56e38f9795c8236bec73892e83b8d32737886e62c729d52171aa12e47b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76d236027d115cc0c7bdcb4df1ab36b007aa26cdfb076d61cce3da23515b3be6"
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
