class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6577bef7510ffbf8ce2f63ef29882ec84875d4edaf8f43f620366df1a7c460fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "83ec9024b124583892cdf48442fabe08be4b1d7a915568e5770aa44308572afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbcf01e4ca55cb69cbdd25be20ad451afaed460abac3805d1937a57976d4b5ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae495906414cba8dd088e59b7d1c6083e09a36821e486e281a9bf713d58b19bd"
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
