class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.371.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eb5e0bafcfa6afd647ba808b0a832f8a1b2862e0959347a9dddb2f122a394db8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "18d73a5d70790189d0f968c2096d872ef3fd60b68ca95c2354b2cb9f76edd7e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43047889d3b80d5d77f5719ee93156efc7ef667a00758dc4712192136db85747"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc1e7959f7f39a9b6ba97ecfa3a8d2f8278e6ba5ac2a4cd9eb6e083546222171"
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
