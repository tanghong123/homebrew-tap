class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.451.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a4eeea64bfb4dd30681f9d2190e790951e83fca581124821a374a6fb9c76bb42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f47c6816b8839968d8011ffcd70827e4658083032c36cc3959308ae4154a7a09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "975cbc51a267e51f963904d5faa7739effff5e4ad9408ddd368431af04ffb435"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1987bff440fea5dd875c32049513583ae17e68d75d6172053b50e1fcea5d358b"
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
