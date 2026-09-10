class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.248.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "089fd82d110b0f3ccea79ee705b1576d536293336d9100c6df76f26f329d7a08"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d3c9df1d08d92746a953ad10c713bb039c256031c761410dba8e930447ac3b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8a0e2a092435e2fd26f03871c5dd506895adf79dc6b8ba0911cff4e69a24f19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c04f944bc0bae4c4bfb58cd5184459494665894dc287582dbb7a826e0e0b367"
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
