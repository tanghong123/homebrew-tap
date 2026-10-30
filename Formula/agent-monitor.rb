class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.450.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d4572bca39a929a1d707e0ba1d9a05a9bca82a759fdbf293654b62b101337aca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "93961dac3fb4245339caf7430315fa4ae6d302345ff5449d38e669112418d059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98e1cfc95c99e16dd4f0e0010803423a1d1a0b6a1ab5bebe9552dba185b869a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e35dc8c1616cad3a24d6420938a150f6633d17d4a4bed5c5b1efe4b9a87c576"
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
