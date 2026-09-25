class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.306.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c01e324e16c9ee85bcff0403581b5536770c5d5658ca5425b0bd6b46324fab43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0faac721c65e91401ed5663d14984d6b040c04ce7c7f37dd130ce30de32e08c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ac32fbe01a59d3a5d500c4b078ac144ef2d54e7d90cb29b54ac908bd8b8bce6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e443d7b2ef73c4cac2dc629f8946c44bee2e651b4656bc8495b6893ad55b925"
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
