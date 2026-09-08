class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.234.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b11223e464c917de5c5540e918a0084dde121b5c352014895dfa1e72190873ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8bff5ec1c41eb3ff519f957027890fc42b248e3cf7abb8dbca10bd2749f9380a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5525fcf311ee9e83292bf67faaa16aece6ccde8a7b3a042ecaf7d4137aa8e230"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f84026fd680297d333c2211697879b1176529b95cf0a498231b3c49d19f366a"
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
