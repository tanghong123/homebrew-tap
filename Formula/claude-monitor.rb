class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fd3fb537c03b52765a9f07421f50f1938cb80beb76139d0aa7a105153e3e2ca7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5561e31cd7b5b2c8763547dda8c75c252f7de39c81d85e038f3ace50fcb16deb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a2291aeab4570ebca18b3a0d5d3acdea04f725d54646c18ad025ef0cd840f95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d5abc9c155c41e16c619d006f8e54712a05ef9f5ef910872a947c11ae63f197"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
