class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.437.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a4915e975f840a19556bb6077448b4a7d8eec0ffd202a998e745581c8ad4a6f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "83ddd8a8fae3ae7c972bf1e9cef60b85cf15d4df719f769fb414e46b107a6140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6094981a51e07a67def40401c0b4de05cdcc418581e2fa338b89fdd8a76e8f6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27f3f90aa2fdbe75377ae18e14f55c7b3d6d403c64c0d83f925af394bb9bd718"
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
