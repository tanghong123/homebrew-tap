class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0637ebd45b4d0676eb77e7416d641e1b2b4fc551d8c06f40c214fa64676774c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "49addcaee7e4ff2fa70c46f8a713a395884801306bc6159fb62537140cf6f8ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "648d2c210a69b1040a4de3dee2134bacecac5f13df304e2de1a46492e7228153"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bad7b6cdcfc02bbb1a5c9aa63baf3289902712f8e836a7f24b86d78d9eed1c4"
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
