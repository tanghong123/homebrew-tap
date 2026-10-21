class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.401.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4e99b388ce256da8919e8027f604e81ca5ce302c1832c5fd9c5af7e95c7e06b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "24436fd5a6c7b0799e0158bf60d6a9978763edb6166db296c946c03adabccff9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "634a39c5947a35780e98a6cc5b240a0a0c6cc1eff0787cd5ad0942e3c5fae751"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c408e280c1c296a354f1e487a17e29e35ec72c45d8e37df9b7cbcc88f7476f9e"
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
