class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.261.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9ae057e84bd36f1a1ac462e5fd41788e42c0fa61957f8e0860636d05d4b75e57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "acda28b7c7c4fae89cf854b2ade65e7610d12473d39e3b35ef21fdc3f1654642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3fc342add78cae28f165fbba4c961dc1cf1e2889d97c456b722e10631eeb4067"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a08cd938c51ed097b57a1d57ad5f6c8bdfe9986732b3cd8454aa37a7761c9eb3"
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
