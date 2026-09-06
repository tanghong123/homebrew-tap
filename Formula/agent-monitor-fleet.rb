class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.211.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9f74a8f1ae7ba483725fc4a222310028485dc79d6bf9711df69ee7ffc0c0f395"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4fb712cda837bf19193d37ad6cd30ab66e755d195e4519be08fb08016ef366a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aef34017cd558181872f6ad16bcc37a05c759ca6fd7836224c9315784da15b57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43bfadcfab55d60304fd8ee17adc5fb2eef7697423c47c4ea1cb7e72c8973487"
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
