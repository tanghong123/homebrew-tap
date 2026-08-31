class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.122.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "16cca20175db9187b6f87d6157a59fc4bda6a17bcbc361add14e9ec79468e5cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1d38ca37b1aba2fb52d94742cf6d69e36a7fff380eb19b99bcd121db7d7823be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06552651d0aa02637b0c1383a53338dea262b67656b9ad05cc721464bab58f58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0edd82e19fec8ef20098fa16c01e11bb022cdb74c6d99d93d8ce38ecc22a1ec1"
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
