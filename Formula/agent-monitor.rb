class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "243c7d0460d1fa440f2c0a1e6a666fc2283e141469f631e4e43d44ddfa14605e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b581a99dc47d4b76663d838c25fdbbbd9adab31d3af5c83a649d124111c3f216"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7252699dbec877284fa695f3676a4ad0a6c17a5f623097a9e250354de88486f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da0fed5fa66837954208b4f651bca8cf96886d5fb6220ba60ae6942ef254b060"
    end
  end

  def install
    bin.install "agent-monitor"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
