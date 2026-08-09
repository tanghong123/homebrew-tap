class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "45f19c081ffdbaa938460c511222717ba94a3902ff6fddcc909a64260c6d4c22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "54da77d92778b5ec19199c45eaf61487efb8125d87b007cac6e30e3976cde7b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "373a62c06a825f3363d73f58ca2fcdca84b30308bdff20b6c285c8a7e5f0d639"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0818a3039dadbaf8c49001bfe98e5b13986a77f649864fbcf116fa3d546c974c"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
