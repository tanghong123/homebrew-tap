class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.390.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "25467c6a79d564157b0d1e3beb4ec1749f5371e3dfaedb4d1effa179f6564a5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "91c5b3eacd511dfada094b1800f8e11d8679636625b588718395b641e1498875"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "561793a0e57b16f4e1ccf9d54d31e40f6167ad2857be4c7016c803bb16dd6235"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4011b58620d1d0180abb42a9140ba5e4f666e65e57793aae771e082d7742479d"
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
