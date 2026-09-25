class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.299.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d1ae6b0b3a39309b5b3c92fe2e024e2661f121a16f782ea33a810d96a79e68e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f3ef80ba7d466da50e7f7b18272cf1c1b74417f0f0de2ecbe51fc2c8f518b9d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffac2cc8720cfcff8de4a24ad5dd10359442ef4eec0c8cc554bec5ca00f9439b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c0ba9cc41add9fd5b05f89b0f09f3484e919aa5a4bfa50bed0386d75854ae43"
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
