class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dfd76870546d43477951374f913fbf2cdec71feb64e583746337e6d2ee6fc8f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2dfea7e71548cac951d2c8605807d8f46ef348fd6ac2eed6b88ccb220dc4ef6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "801d4472784861ac8c8737a2285a2121c337cc3325672af3f590ab1138bc8520"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1918e948b0766019f30cac41ddd22d73b96b311d2563b7637be263584b2fc903"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
