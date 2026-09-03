class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.151.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "368965290ba1296c0046ff007c94f0d93eff92fc932f925aeedd2c6749cea67c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "13ecff5addd83ca680938171d7a2ac3b93da738eb6204d67d76c1ce7280adaa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f62b5cef98eab0817213367044b24faceb55f69484045955235356d22f9c140"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da35b9d31c7bcbeaa89e4f2528871ac18d2958ff7b61e1c9d6cb3e7d2f1acc28"
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
