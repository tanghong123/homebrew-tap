class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.120.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3bac223a221c02dd646efbfce862ce46d09de41d714d27a746862c697f320655"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f5bf024ca7bada58f4c8eff90693b6af0fef7de856954f35035f7fff7ed06a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "554c17b13089835e4fb7043a4b75001051cca54ae1fb73a2daa4dd6ec9857981"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c14f869deb26f64cb8871ea114f68f76f861d4ab0eea828bd9e1a5cd82636aa9"
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
