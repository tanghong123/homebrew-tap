class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "db07485ca6a965146655371daa67562ff481545e4f191b2abbc3918a76f74304"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "02f12cffde1dab88e5e48811ad291ae42609a5aa38419c84ff9355b04583095b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c820b503fdd613e343901898b278988a59ff7cb094bea41c1b0b3d2dc2cae981"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "786493bf37ec874262bc40a343390d9bc1901413f9cf015e8708189169925f99"
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
