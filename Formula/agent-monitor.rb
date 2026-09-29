class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.328.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6b9d9bd49b38ed8fdb998ba6647a5d7beba357d8a8cc5f3a1c58db23ad3c983b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "02474623db6d0350338ebe00bcfb34ed544e467016c94ba62811d3cd990756c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d70709cb87d27eca601892706a6bce99091d5d5ef9aae8a38dea18bd20bbaa93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "441549277926d6c9a14cce7298b963ba8e0c833479353b45d482cbb98b3a58ec"
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
