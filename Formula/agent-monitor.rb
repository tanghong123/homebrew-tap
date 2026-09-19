class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.277.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eddcd865ef35f37ef3431a7e480be160f88e59816a1e107fada58e77c516c0da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "eb0ea0d4d691f6c9f60bf0f874c986dfce29796cf53c0a711454696fb1c2588d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "facbfad5315b1ad4c2240ea76c60165ccf7897eca28ed5bd7b8ea5b7b8be72ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cbd3a304f860b412934ff587e14ed07cc22b2546baa3ca49ce0b0abf3d0413d0"
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
