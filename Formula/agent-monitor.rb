class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.211.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ad3f4e9bd6708431c0aeb79fa5cdbb01d01ed61cd11aca5689e7c4103f4af3b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "78a2bd14f1f65d7dd9bcc3c4df81f0ba95c4a67d3ed88b38094b4f99565429bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "939daca4ade1b3057899e2a163afe670eef1746cb33a1c805cd994a2fc5748fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01f8f54b066d3f7e4b29c8b69138a94a62449c9a98184f15e8ed49404d26e0b0"
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
