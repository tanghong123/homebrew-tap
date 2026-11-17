class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.529.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "69ca4078da2a8b2f021e142aef1d628f024a1b18e008483a5ae26921ffeb2025"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "43ced979b48660a06551fee33f6af895a9a35c8ed448ff2f07e9aeb1aad565d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52c6f612f196d5bf688eb43ddaa67db427869606e90e793a7adce00cdefe7fa1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae6bcf75e3225e72b7339faad623d49ee8204cef25e93a6e9bc718d3bb51af96"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
