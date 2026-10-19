class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.395.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6f0cb125f6d420a9e4d60c77b979d173a9d06a4c0d0ad2888df6d3ace0441e74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cd496f98a3317f3c71ead2ab4a07ece58082423ec285456b35521d0fca884673"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4534cd5aea491900372859209c6cc75318f2cfef1214b3fad6b776a636bebeba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a3df7579c2810a3cb6f78175a538a94a772654e51799874699a74ca5aa9d97f"
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
