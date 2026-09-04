class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.167.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a0eca6c6cf4a1bd5a01b78a3cd720f3a811c1aee4b92c40009b6b96b6221233d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c8dca1d0e5b1623fb6736ec5b2a40f41938d3ab76b56ed121d7bbb9d794684de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74cf5d9b0b227087e07e01108a092a4b3e6fed8c89da28e6dcb44eff2bdfd41d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cf376e30906f1aeff19d300fff758473c207076f5af535639da3e13fd1f333b"
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
