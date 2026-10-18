class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.386.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9fcf9289424eb90af897731a639e82478350e6d7413252e5c06fac8a63314977"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3009905cce0c18a822e76ed067ef7f0f22ec970a87eef6bcd72d40172e422257"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "700be7b65cebd26ce61727b7c7896921e3fab8fb034a66aecf2bcd142648216b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4935ed534f677d813454f5da159f3e8d49372a085c4ee0272f5618627e0a3a08"
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
