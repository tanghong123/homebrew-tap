class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.261.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2e8be30dc9f4b5cdd1e35e9edf5b9c7b502c0787dd63ddc597abb3be9a4e5c4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e66e2660db59c987df4128bbdcaee94c14534ba0529d3af11332e05ab0ecc7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a30d71c254062a976e2db252b7d4df9368a5c67aebc5e821f7d18e2137b1e6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e54d3bf8f94eb5c71d0d38ba282646d4314673f36cd18e073dd0f56172a8dfc"
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
