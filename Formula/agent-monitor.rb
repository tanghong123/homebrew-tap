class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.312.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "aaa41d7c00263ca62a0d2dbaf588d845294517cb4e03fde6a028ffedcc3e0ba4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "380830b7889f2e36a8e19610ccf448ae6403b7a6298a07722728d69dfab0d273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00782913d3cef3e2261d0f1d56aa79b0aca91a29277e21bb66f28f5b32bb5be5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f7c97bc13f0165eccdd0dac7d122040b401cc079044ad51083ca949dc03a775"
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
