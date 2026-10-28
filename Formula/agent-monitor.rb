class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.438.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ab847bb49c4a5956c66a362d58ecfc2b7057203d8a90214c44b3278036c99357"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7bb4a90c27d350c73e941e7ee99b4d6b6b3b3ad131e440878c4ca3f503508175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9e224cf8285bc53631c8fcb5b46db40e5c65a418c14364bb2726983e8656bd7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eaa13940eefd0cc393ff28d33c6d8581b7b37ba5e2e0680da0a53c87b3f73e71"
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
