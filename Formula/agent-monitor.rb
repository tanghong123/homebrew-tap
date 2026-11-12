class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.513.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "31980b5018306f7f0f785884c2169715fc4d37c9101820091654076d043285c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9172b75bdde6876a0b986e5affcb4e0d1186d7128dbaa09f4e69044a0436904c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ced6b289c593b6db16010852db9ed139ae280005dc0ff763da1d688399b54ac1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd9fac468bd137976518e5a0f1e3945c7d9c974e2e1793e7079ec90194517f09"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
