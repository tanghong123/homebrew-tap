class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.287.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "359388731ec73ae83e7b629761f37771e935f8544e211411361acc6a20d7f2f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5a04cbe05af6bfb59f4292104f80e2a0694355a42a5578e9c089fe9f500ce637"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a790a1d0abe68add3d0c90b22250145e23ada7119539c824ff5404040d7afe3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59d25acb37ebcc9054e19619fa330feb99ef43a213d95ac59acc45f6e64000ed"
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
