class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.433.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "083d11d3da03c979711d88a208c354aeb21208ef43a62afa2f9489a889f3f554"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "926e9955965800bd5c31217440f97b72041f2fefe3be698e7b75eed7fc4ddb20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "614208a84b32d173b4c70e298a71fce5b86aa4c6928550bd424f6d52fdf3c331"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "523223feb82f48177df5c0da0490835763e1caab0093b25c30584d67d8ea93e6"
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
