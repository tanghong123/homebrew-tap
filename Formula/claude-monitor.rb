class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4b0f4965ca122431c6f2067eee417212ed6141472d559b35e48e41aaa64bc6ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "995d4fcd2f9431d6ac5aa4203de4b0a2a698a4c2f6f9f0fd198096567eb6fcf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "478dffbaf9f3ea3c752f140a6b46ceeb916b103ea449a20210539370f8a72ede"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e36a4a6519888d38140cad088dc5cf4d3b61a864587e45c2f1b3fb19c36874d8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
