class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.399.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f4b2d0b7499c5fd1786ce4c2d54f7d9994a4451c45f5a142909c9170418fb683"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "891198a686b6c9bd90660e91a6612db54a4a2e7065e7ba7fe8bdbabe233cad43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8aba0b49756a6c37595bb54fe93423132762262ce45078f1886d525ed026da43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1e051c28b06c06de70a226716510343dc2d0072e43cc02fc9b52d2e403d3b69"
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
