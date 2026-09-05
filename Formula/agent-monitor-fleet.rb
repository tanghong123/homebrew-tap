class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.203.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5c63481a1b4cf9a9d964cc0bbc6712297b8c32d1321d7203823add8a19633d27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "56ce2999cfff054b67dec0c0bd3c3a0a751b8386889bce7a075101f8287945a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "907a887d72e424552ef9edd9f68d048f753bf086aa1254a4d917d67ad6a7b9ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e59c10d06718d0c3daad5c18ae1c945cb9bca63b4ba7f044366fcca79ad13c04"
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
