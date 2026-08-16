class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.83.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "77bc13ca98081735c6ef767758f549928defcb245dbe56269c6c3a6d37d8c5c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b7c76123081e181e461ad5aa2efabc0c27df3909bce6fbc6a2a28ce12c0890e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1644a7eb1de52dbdd70079112a23377b008e1387374e5ad2dfce23b842368b71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "609b42414548f338513f871e883e08bd41a7b42460c30a6e074fb87680701c6f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
