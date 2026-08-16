class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.84.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "809d730cee4ebf1308fea74b97cca01d40d7f8df730b07af201e2a1384495774"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "19150199c994ba6c7d3bcedfc2dfc611fd132c852474555ce3b94c3b9288727f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8071f643e09a454a9abfa276f6686a2d4f7cfce5f1a3a3be280f04be545c3c53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d93f4a725309a19e2cd6fcdeea5ecaeabdf81f11b41c0c3ab6d115c99d575ea"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
