class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.148.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1967c23a4541bcc7f3b5ca8ed116d633ec6a8305116de10a9477071b52029a79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "07f5a085d1cba0c1fe59307c29c065e5ffa8c8111f39c4d0abcfe84467da7385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3a62ac0e51e47f51b16a66de05a5da05e01aa12bb2a689e61c82bb12716ae12"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e666c87f9c0b289116c1190ac94680555a2ecf3106d736630e2b6f992158bd4e"
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
