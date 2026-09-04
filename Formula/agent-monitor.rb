class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.158.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e425a88e03761bfa9c8d26300ca71c1ecd27330fb11a5aa729814ac38f756881"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0f689d19939fee109de9bfdf0682dc0267b480b0ba8a6354074d8ed4485c262c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8be31eb89252dd5d0410f00b31ed468d7bb9aa3f8a9f5f4f8f4fbe4cb00f127"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b416f55ff0f905c6649de049e7fdaeba37eda64ffa3f582ec4ac5af3b87eb71"
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
