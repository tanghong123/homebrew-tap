class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.551.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0962f29f9fc51b6a5bf8ad33549cee470d7f9e4348783c3426796046f2b9de1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5babb8e77675b3e66a110724764030df1c3ddfc7398a0dd25dcd28bfcd6f7b53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "956e411474d97813e18dff3094cae6cfe9729adf7d874501f665b0b88acd3899"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce9346238d0e125708fc5d5944b974279271504e0d0781948c40acee889ccf6c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
