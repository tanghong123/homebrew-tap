class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.160.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e6a9bbce827fb3044a0fe878ab7ab685abc3c80cc98875e0ff0eb6fbabfc61e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f2fce5c32d035ebc66e81613aed2a2ae3a3a9b9d584fc393dfed9660901d2b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2990812a8350d06da17937b4695cb69801ed7c2adc696205468c886cae88df84"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "175cc82cfdcbce2bff9fdbcefc45b930b31c7c6194f804470ea5279fe5cf93bd"
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
