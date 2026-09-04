class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.165.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2fc9551323c664348c70bc4c20e871476947ff4d417ec0ff81fa1e700c035218"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3364aa6734fdd975a33c0460522f26f8f512dae7f13abd718ad2aba32a199e79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8416bd7c06544f10525e35ff8a6ddc2471977ca475ebb89e4cf1c30089da6c59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b26621d05bccf39ba872e026a18be936b44b3c432dcdb5a0aa0e6a8750d7b90f"
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
