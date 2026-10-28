class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.440.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "72bc56179887695dabebb456780bd87cc93cd0e031d786110bf5540152707986"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "268289a29892f6bf8b884e5e1f01233bca5a779cdf45723fef556c03449327ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3448d983d83616755ae082ed4e4702f53aeb2ffa34869c279584a4fc70c20e36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89cbf7b52bbe3db6a6164bbbd8ff61841c831b5ed315aba3fb4376605fa4faab"
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
