class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7e9a0be9c925c5982cea3df98f14d2424bbc50741cd138711c13edf313885451"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cb6b257756bec778c1bf1f0ef72f221e6514c1ba3d175b82793b1c055154ce4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2549db7a00eebfcfefb4804fca24cc610a8f0d1d69c2458471ce8f442036c452"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a3cf0a2a9f9be0b4729d8a10f6bc29837040b0a347fafce340a2c02c4c9103e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
