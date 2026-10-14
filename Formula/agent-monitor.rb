class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.377.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c23499ac16de1646875d982164995ba9732b9578216e1307bc9c85b49ed34df4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "58cd8e86139f0df81a5dc0c3f30795e25dfe59f53eb43b8387b29708d9ef7cb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93096319cf23a4e193a2d898fbd2a45fba963260e080094ebab44b0ea0db535d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dc0f4b7a903dbb1a02187107817dd135fca20eef6dd39f8d41413be0aef603a"
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
