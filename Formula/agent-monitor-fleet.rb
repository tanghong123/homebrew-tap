class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "88875530d4dfab1b2b1f06270ad4719250660fe344524d6b3f1e6b3a5fe5a40b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a9edfe2348e634fe7347496c8dac3509705eb28155489855626a97f8b3384908"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1246846f753c7629039cbc5674f0c22a32ca79f9669c1816bb5340a0c717384"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef40ad69da5c53458ed79c474573462366df8626e76ae2cd3abfe02985d34f6f"
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
