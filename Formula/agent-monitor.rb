class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.288.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "65a2770eff386039801fd8b79cd14ec61141ce4d7ca76047db72301fa3236aef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0c9a091bed01614d9ed26aa211633b13471c38a3469f904de4d700eff8c98a0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8a2878d19076d285d3000ac76ba1255ee85cd2e9a1e7a73b52b710c31398262"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9d5677886309f5546220f1ad0c139706c001d3a87c10cb27e31bcfb379ed03a"
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
