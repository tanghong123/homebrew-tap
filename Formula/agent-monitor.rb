class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.500.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f7f8f05833092588ebae5d32c0f8578af8048fd286ea3f09970efd272b4ca86d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dbac8260fe86ace4b3692c631cfaa2745d845cc3f5eb9dd26c406927afa32dc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6afe595aa5f78dcb45d54cf4472959b34d53b8f25d7dfc5b3ad59318f26fc65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8946756a92317d2c85beeddd1e9adeb6222165485260a74289a0b59a4e737361"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
