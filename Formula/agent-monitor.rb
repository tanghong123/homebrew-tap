class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.289.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ea11911de3a603d525c3a1e9c07fdebaa6228540f1ece2be90aa77d11dbdcfd2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7af261dca3cd84eaf7c5b5c55cf6248370121324c7969b16fa0722c9d0efb80a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ed5fcf12afd7665140846489dfc447bd624886d80d9220b3b5b701e373000bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "463f821c8de5e800c107b8056ff670b42f4cf0c6e36e72d301245f92aeb0c1c1"
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
