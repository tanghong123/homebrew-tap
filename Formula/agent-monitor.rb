class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.373.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7aa713c9d7b992f5cb0ba6a1761425faa82b214ec15ca8015e587f481061d7ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d1f6c341bf539bd9a49f0e4602e9a7c6f77d31cf4d258fe751e201c19c5de911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a87ffa615f2cc36227d089f97c043d027070417f25004bc65883b410948f4897"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cf4e41d0f31433072ed9e0f52613d31b8c69f8ca95f2c1074cf07326e833e9c"
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
