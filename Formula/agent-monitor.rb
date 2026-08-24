class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.105.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dcf882e3df819a4887f9dd315fa406338243ea1323d4f49d6e99b1c358e62508"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "24bf37da28e026eb9d227957dd9bb7c43fb3708e86690abebb02855cc7cf54f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93eea484552c853e4ff519557137204190cb8c40f16f16d533cd41b5a4f5ff70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c9cf497e510b4f89cb9f06ef0355645e4bf53ecd22cf327998d695d4d4508ba"
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
