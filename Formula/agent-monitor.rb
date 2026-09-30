class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.333.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "05c9a79f4ee99e5cf808c881c4000f77b6a48315e641f425282537750f093f86"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ee0711b4b7c23fe453f2b08f45e941d7934bf19472b5eebddc074122072980b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb7186376639472f86ac4af003a4473292caca72e8db8559ce64e390727c9451"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b1e7f4d758ceac9da28971d351621666a3b054165a10d6f6ecd51dc53d43de1"
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
