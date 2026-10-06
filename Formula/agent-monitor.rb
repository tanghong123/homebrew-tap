class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.351.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "38159f5fc566dd8db39097ae024f7c2b9e1d97e48d56012b0a823e441f6f424e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7fa762bba49f910260a1a72693047bb5c291542839889b8bacaf10ff11d205ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6888155b691c01be18a7b15b0c3151771a044c7cbd425f6068ccb5b924dc7e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cc7dae8ed67b0d2fea0b7d1125dd4cd92a8981c9a30a8ac3b74b751fc2d6ee2"
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
