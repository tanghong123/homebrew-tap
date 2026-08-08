class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.16"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f91261ea61f5848b1e653b3506074a42ced94fe2688aeb34ed58fa0bcef2c0c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b19ae0f1936de8e3d6ba7ca272f31406382056097ef017632d70cb42dcd0d50f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "688963b776bc7af18849a60de9e289d3ca7d26b6c0691c9db44320ae1031f349"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ba3c0b9a8ccc4ae5cd883d341e92f8d121565abf769c8947bb52c848b4d5825"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
