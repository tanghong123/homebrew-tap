class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.271.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3dae7c4846809b248e352294cd24985b2f789de253bad21036d249b76e8552a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d9fe28d833448bbdd9925f37014dca165ec025b26cee52a9c07c1e592473a391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65a63a8dd4a8cadaa37baac4c0de7892d83ec54fb45fbaa174a4aa9f8d7bfd2e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb39fe4bf30987b82abbfb04515b12adaa35f9f78261020296083eee43fbdcaf"
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
