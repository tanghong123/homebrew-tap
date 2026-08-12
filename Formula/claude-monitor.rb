class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56d45574e45635020421b7c516a99d56070fd36f178e3c0c506daa517a7dc359"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "532e00fea59ead49aa4b4d9e99dfa77e3c3f18d4f051e6092729067ced5f9cd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "416af72600f1637002fb28ce60d9517c6db0ee8154222ad398ee525c77a7b2fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "899674cfa34c6de2f6441f8cf88c62ecc2e0d26de0ac3bd41c3ed1b2c493a38d"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
