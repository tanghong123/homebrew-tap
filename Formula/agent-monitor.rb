class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.527.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "09bd76725275345c5ae05c732a565af30960a1536b86c4eb33cb46928fe8bfa2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1ba0c41f19b104459bb99da86addd022e792b1183687d4b0046854f3b2a87062"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f21a159a4e01e4e182cfd00f5107778f9dce37296f11595c8201abc469401b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60867b983cbbb4660e490b323744ab50396ff9e84fb117382955aa8b627639e5"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
