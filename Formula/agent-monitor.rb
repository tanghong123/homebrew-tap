class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.118.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "54b5f95027d77cacec1983b6bf5fe16a606a9d5bfd604e26deb04bbd9b2e86ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "baca767f47fe65a3c63511074db5d07fb136fd158f7a83752647e1b3a2243ac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3452272cb5d2f5afa8cfd25221853c38b77db1acf87d4b1f7105a63beb88c08f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6ec3257674e0e926fb1ebcc109e5f36b19563b46a725a353662c94af3dbf298"
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
