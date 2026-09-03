class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cca079eb0bfdc16356a534c362acd460925f39a3bb79fcb84b3e02b238c2170c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0b98f05274255bc2de31e976ab6107cacdce2a5e0cfe18b66f355dfb31c11bd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3380557d7bc497daf88700562d8816d8f9fc36ef2bb6c7250105e7d8fd59680d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78e6e9850854eefe03897ab37ca54e9ecc604c091276ae56f54a63d4b8e2587c"
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
