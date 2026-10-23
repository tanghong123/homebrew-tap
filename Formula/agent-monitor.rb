class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.408.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a21abb8a22b6998f5eac1e85175edf2527d09efeeb519ad06ca92f44bcc57adc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5774281db1d7ee29f1689dba594a4b8fbd7fb5f603f2dc09a8bcd6bd37429b59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be7ca565f0cb68fcc58d13db92cea8b7b99f0b47f008a3176de286fb0b9def32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9e697a20a1d0b545275b1879449293ddf79889f35c385f0ef86f230a12832c7"
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
