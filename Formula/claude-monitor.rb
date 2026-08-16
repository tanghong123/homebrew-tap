class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.88.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ef558454cc741283f4e63581f1e3e97bfc250167c3c3260c3f02e1dddcbf572"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a3ef640b1789cd8fa72020c613803997c9f438859b9805b052094e425b5fc858"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3a5453372f755409da83295b62367c941f549e7e82f04f6cd3d0291bbdf37b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33c5061ff151e2f0fef7dc4516601a696ec90ff70988be61ba11913bf08e8080"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
