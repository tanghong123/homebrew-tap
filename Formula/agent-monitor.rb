class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.213.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e163c43fa96931323e33377686f3c8b589e4b0ffe8b41b2c8f9387b6e9b9868d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b00bd95421bc950a21e55ca9ea4710dc5763a977d12854adbe272f2a33b950a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f17735a07056de2fec88b6586ca61cb9d89035fa3b197ad60904e59f93b2c2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8700fba57b3eb9173b3204883073a8eaafcefc463d61798abea958376210979"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
