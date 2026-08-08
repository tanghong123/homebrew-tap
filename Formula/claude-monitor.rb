class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.55.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ba1d664e006659dbb02ddb379a0527f97900dbbc71ae3bc61c7b27a0be1ca79f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "490e4c8fecfb2abff452406caef4f89f466a4bf83ac368957cda6134f184806a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "030f7f3ef2a5a32ae68cc1acf811dd1d17f8c970a215c30e222c3d5125ffe6e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7559ccc60b22c8c3d6306b58482673c656d868dce606f2c38e92426a7857c4fe"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
