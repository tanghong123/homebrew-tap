class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.352.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d87dade74739b99c48f90792239a382f338fe67721ebfea3134bd7f5c0fedc4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1b2936aaa87bbf0c9a8262870cd2954c38b87a86d3daab3a533a68042277e7d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c7bf62a19f9a1e092b48550479a392f9e05cfd01775285cde4b80c5ec87de91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d347090a927d563ac699cdf18b2ba71f2775f4d15ffdc276e79a3179a1bfdfda"
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
