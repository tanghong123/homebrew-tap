class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.250.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0d4255f4c17c9a8986cf68b5db5375ee9f8ccd51f2bdd5d0b557bf045e7ec606"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2f71c72b6cceecc57bf42da03ae5e992fbed692ea9667a3977c82d1e915ac642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "181aadcbebde1a207514c70ade9e2d5792e2b76c65f67ec1a0cdf5650384536e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b16388bafd98c98fddd60475a661061271e49c563e79dd2a4d873c11d0569ddb"
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
