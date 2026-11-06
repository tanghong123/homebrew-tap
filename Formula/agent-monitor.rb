class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.477.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "83a49b04d923506188c3a8b0df86c246da7d521e0af07e1fd171621aaecba284"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e37c7e399df55eaa3c24eff5a2a5436facb2dc57bb07947be1e22c2ffde15cce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7a5847d222870214e654d3f0dacaa9d5d79a13dac36923dbae9c64af4fe60bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92292c76103cb12a7a0096ec262fab3202670ae8fa9d911c1ee2cb539b5f9196"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
