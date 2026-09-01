class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c99d8574ab2bafb93323d7143889206483461fa8f325535ab188c02c99385aec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "752d9f6ba48927d07fd9b1f152a9bf2a97fb24d0cd279f6ecc0c3bf13dcd5e61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c85212b5110df65d2e58ba8f5f290cc205a234a56f7674f598c513d45264aa33"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7ea312ad3cae3b8ee77e6c0ab3f7fdff3634e527ba0eb49eb90671c96389b58"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
