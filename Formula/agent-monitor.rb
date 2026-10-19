class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.392.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3a13a5b01a8ea13cf9ecd356cab72c1fc09960bfe49a0005d1c48a846fd23851"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "855d0634dfde31f86158432a34e57fb36211e60ac8c3cc3d39120e9168b29fc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0824a8b45d2d1df20cab9698c6f4cf057d663dccdd4b5fc2ca7c923349f6842"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b9e5fcab4e878363d91ef6c11209edf3f9233b493bdaac13250580f2f64f98b"
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
