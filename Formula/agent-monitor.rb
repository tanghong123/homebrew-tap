class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.404.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "64e7580d838afd0639ae833b8835f34f8b47acbba385c3226fd1c0fb965b168c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0bb2e4418df151f727680e7ea1890baa6e5eb41cce4218c4a3da7ff8a012b19a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70c805da88c4bb7f87acad8b293c83dbcb9a4a347cc82ada190ff569a416b55d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f7c1325ae79b89e59e567d4574d4bd813501083da420152f8ef0767d9e7383d"
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
