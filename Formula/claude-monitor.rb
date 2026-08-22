class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "09235e3da1880ea3144c50301a956dcbff2a60fb548cb104e91ab91955495368"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "130b9be736ef247d091c9895067ee78ace8920c1547e7be8e0e5c3a00ef4d33a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e88db5ee94d61058f317274f370034f58d54e5ed7daf12fb6614886a98daf9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1c3f55b79a575d2e9e9ca4c3331b199163b56501fc1cf7a6fd11c47dc9b5b54"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
