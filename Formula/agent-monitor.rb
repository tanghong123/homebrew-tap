class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.141.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4bed19262d0b15709eec05525146929df78e61c8325a7ff1c19d553932464865"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d80c24de4a6a23ac239f2351cc36c835b938566a9d1f31c375073a0b476a6089"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "887d0bdc22b62e8f8e58596ae20ae921e49ec3fe92337dcb6b9c31dbf57a8f7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d19fcb4333126851e59749b263a954939f5f043e4a2c8acde62c6be1d9370321"
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
