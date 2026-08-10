class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.61.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "42158731fcfc239f0943d2d8b05fc89f9156b589936fef902e35040590efca04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8dcb65408f93395b4dc25bf9ff346bd2ce8c5edd782d53420fd9664a3395f675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a68614c2d4a23da68125e7ad05f9b05c49dabe95bbe6c919f4389addd53a2d1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fc28c973c631689aefb5cb954bba76db699c92dc5d85fea3d83613f823ba99c"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
