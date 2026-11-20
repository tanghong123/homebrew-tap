class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.544.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "15a74443d33c510bdc6d2135ab8d347c03994364306bcac7bcfaa4ee59f77237"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "abf50f2a88d92d152c34a6b7b59cebce9d657b5cc82092edf35f355b578b3cb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0ba5408ac7bf6cfc21492b637984c39413724952d7be3afd40c1595d9447c0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7362eb8b7f172304689c5433e96d28edeccd14588bb2de69610dbe9e2f2fd203"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
