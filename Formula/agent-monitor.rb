class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.376.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "65c45f7ebc75c7e2305fc900582a57edb158f55f1d9ed9e8268923d5e1052362"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b974013c862fa2a102634cad815ccd0ef1b678d04c9b19faa09c609a6a05827b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edddbe87bd1a7e4e8aa7186de69a71ece9e6a5e7a8b5ddc7757dc443b6585fbb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d8cf79053ec838629b0d737865ac8d557b04bb5ce800cab0825ca80fb55ac5a"
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
