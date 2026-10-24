class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.415.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "675dd9774f9ad92fd0595e2e4c9b7eb0092b89680bee3b648b43dfa4865f98fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c8602c8db9dd4900ebf44af13aca85afccf69f7c4ac871c4ba91326438337977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccd925a57b156ec79e4c27083142ab51a3a64932ab3029c0cbb132a7e35d2585"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d9f74f3778a7407d7ecd2fedad5446e046c9428d03a4204c7285e6f92a35683"
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
