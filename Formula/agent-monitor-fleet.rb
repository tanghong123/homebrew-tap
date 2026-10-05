class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.347.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e727a1017a223221c5c02a9f375d58e7ea26c057be4845d8e7b7f5e0c35bcc1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8dde31f4b810ab831f5cd54ad1892d0d69ddf5f16f5ebf35c7182920b22d663f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fee8e21270c9a4043dc4570086762328eed7588b289ba758798ec745770664ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d71ad836b55e75796c6924ffa6f5426b9518d6eea659b1eae592ec58b88a4859"
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
