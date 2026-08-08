class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7fdbb5083a4d4f21e6b3431c779796e6b6ac0504bb0ee4d9eaee8bcc6eda3b43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e060fae1c6a7625ab93dbe7a4c6807345a74974e217e21663362f620aba60143"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "40416750cfc9d8d2e89af88b38afe9e8cb4e4158ec086a63618876fb14469ef7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa857edbc35d8eea30c97d2ae09e0b25e45d6f6b61a58a0cf0c5455399475a5f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
