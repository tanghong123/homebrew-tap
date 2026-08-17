class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "89af93d28976a98e1ff2adb28607283aa7fce6c8eafeef843825b87b13f57348"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9353650e2985f5d583925af967a2b4de054c3225571946fc6ba8d9d6bfabccb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "336081a1fcf8ec85b327d767e055dec5734b2c1b52746407fa9635c94685e91c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0298352ef08d7ce1bbd4ede367087730ff548ec35a27d848f9ef35ecd0591d8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
