class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.120.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d6478fa0a8a806dd5e81117d71da0ab709840adb71700aab0923b6ffa7063898"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "544a39b9aca07664406d3b9c2856965ff961bf55bc5ebea1c8681a65ec283b2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ced6819336cc399c8f071af68651702bd92a57f061d2e3e1787400da6c8e5776"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82bea2981459a6ef14b529260cc8234499243e9ac143b75374e779c88ad2646a"
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
