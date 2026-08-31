class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.118.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "28b0f962b1b40e5414d6b23888d148807cd70497661cce69df5ca1fbe3a274ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e40f3905ac1a6b0c16fd21d268fd3819060ff87a18dd71416e6ab4adbdcc072b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8bc7eff9c52a6bf68396748983fb0f72457e105628f35521117090877e690607"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ef75dcf9f6bd525d562b7e1499001351ac88097d1f5115097830ec05a270647"
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
