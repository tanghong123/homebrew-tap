class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.280.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "969cda8a0243cfc176b21be1870ca5a7e1c6f16223eb4e5d3dbad6484cb03036"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "842c4e2be51ef0972d02d14cb2fbe06184e42beb0f6b1f9e197c86adf00085d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a3e4f77153d104850ab6d2e00e0031b2620ba3ad55200c59bbe0116296c9f87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8eaa10b58d8d82319c5e482ec5b9284a2fce057ec16430c24983a24d0c37b5c8"
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
