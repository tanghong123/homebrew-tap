class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.520.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8624266a28f8d14a562c18114c1ba873c168e18747307b14ca89e3f50e32baa4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2fd8ffd461012916e5b4e7dac691f4499922bf7521220e7e5cfd1ec04d2c8610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2674dd059eaf7fab0f1221f074ac5c01e08af5a5fc4e1f217779d1030c60723"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87f58b6ea5413fcaa2237f42b2bfe641224fd86d04d2e81422c80d89c747f8a8"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
