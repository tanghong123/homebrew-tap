class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.412.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f3dcb1035b45bb290c98d4a151dd74f790f9fe280f16f38821010b8f9b0c293f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "43fa496fed98bbf46e4232d81849c43575eadeb591f5ffaf5b26af8ccbd7ef13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dea038e2c22798a6757bc1b24d38c8dbf9281459957e204ce522de872eb0990"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a16711015af7c42bfcef876694ad5141eb7dbc3ea9e2db460454ba6aa61d4ce"
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
