class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.254.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "af303f0aa17b90ba40dc45d7fe5edbc7c86c0e0864f33246096a509b1932f982"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d43080ab1194d0d72fbe795f314e22362da3a925b2865f35fffd9a40ba933b32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c23f537880421f40924b55550b2480fdd25524c22deabecc52ad50ecf165e4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fac63561c9c8d25efed796f2edc589a2c6b6054b6fa42fb896e46441d7251a88"
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
