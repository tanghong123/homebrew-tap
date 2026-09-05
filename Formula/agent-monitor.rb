class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.203.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ca5b6d5f936d89cb9dbfae46a464a321753f97fe96c12016ef2c37d9b69ddd14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cf1a89d2593760ae92a0c7f80824514a00a9b23fe53d40fd4425ac191294817a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13078204ff23852067a24e44b4e31b1f120c294aae2a9c9b42342cd25a8ba33b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f12b3b3c79bb211b4daaf0f8edd1c9b736fbf0d55c951d3660c9447ef627e8fd"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
