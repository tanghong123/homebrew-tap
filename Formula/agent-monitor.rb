class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.159.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d1514cdb98fdcf2ed354c0dc6581ae15b79855dbba5f93bcf0553a835169731b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7213b92ca6727e5326062175a3bd7c3ef22f6228a36a4f650194453051b7d393"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "880a363afea4efd06ecd69ec8d2eedea91894f9535520b1bec26ac8857cdab4d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f82fdb374546f06b67b9987591888eb7b69e3a2fdf1ad4e0bbefc4581c6a095f"
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
