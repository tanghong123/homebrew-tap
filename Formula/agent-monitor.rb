class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.388.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a7fd5d4643fa81e3efe3e2859195986eccf094f263b90837717e8a6b53d1edbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ea52dd815c0171eb72a6a673867e7386a4d2645eea4d763fcc3991d90dba00ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9725aaa8ad5e1fcb7d99143dfa93cedac015f9299886362ef483c7235d71ba50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2a9464fa2db380fe979ae3bdc0c837e9e925e37ef9ca5c08f676e0526e3d68d"
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
