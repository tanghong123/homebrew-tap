class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "80bd759ab9fafc7fd5374ebca1bc2a62af95980478d7411f6a8127a5699529f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c83e86870c08f711bee710a1640b1b3ad1dacb9ba9d30f4812ec0a7ec2e47dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d6636ed1eef316a9f4f8e03c88f3be428aad69c23da6f7185e7588b2dd565b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e07a4ab3f977f800260be203b2f1baefdf6990d71530df8747f1648e058e4c3"
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
