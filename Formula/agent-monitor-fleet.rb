class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.381.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "69202f3b2f0d1c69a436bc340cd4ab3ae2a8368575b088fbb7bfc96b46f027cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ee99747e0b2e2ff237451b39f33b024e4470dc391666ba9ca738f8776809910e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "691729bfd4f3ce35cb35e9c067b12b34361c988acde779bee291201460904e66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a088acb8c8389fad805dfe1f295c842ad0958b61b1341ad8b28299339a8b0def"
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
