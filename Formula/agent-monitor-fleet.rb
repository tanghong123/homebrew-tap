class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.388.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d0c94b301e58b8fcb0f744634fac5205985f4f50d56a7b09dd7e4f16fc45ce1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f7b2cd6ccbf819538fea2c0752166c012e0e32762fb1b7c7eba88760e906f424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff83aea5f94499eea647a6e97f1ce8c89dbec8b86bdcb92c25d56a2a22f6e563"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fdca0b786551c3fd75a340ebfc0209e908e153ca73453795fcb0533beac1507"
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
