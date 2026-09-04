class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.171.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0cd095de4c61db13f2396e795dfb8cacbd583686cc8eabad2370de0ce0e57dfa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7737e2702edd6aec696b17ec7554cc797877bd2737c470acafa5128b5adc24d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a6d0956a9396938fcbdcc44e5fcee91dea57f099572fb145d4b9b72b746855d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41811c5cb58bd11aa52065ed9551c48acd380b865cb3a144a07a50efd6ff84a4"
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
