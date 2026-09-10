class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.245.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4b58c2c82ed15aaa04c50ce6062490afa1d2d8b1cc80abede4a80492ccf675a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "76213410057de3283e2e6219596c49bbea12ae222db921250a1cb0f1f3aaa725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "488335734d65b26ddbbbc0bd6644a0622d042768775f41752e3fbdd439d00760"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a744e9674fb432e6d49d2b44e8c4102f65b24bc11a7f1e308bb245026d2bf17"
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
