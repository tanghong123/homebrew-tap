class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.538.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "058443d767cb6e4307115348bc32187c436383442ee9cf045653328e3eaf1bcd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "de8c535365867a01a54d8b4887995a18903527f7a008c096705e57cb0ab3d71c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39cffacbbcbc875860ce1cfa4ba74f3955b26dcf7d021317630916e4b1e1b737"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65e04b50587d931aa6286330f9a00484ff912d4bb53c22557198a84e3b415b68"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
