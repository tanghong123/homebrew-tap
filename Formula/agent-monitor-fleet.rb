class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.159.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f76d2f3e0500a98894d08889d430421a3dd2f13754a68449b9a4c05bdff43047"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8700f5a09adf06b6d91bdb910bc19a1d476e9b4bb789df24f712c9512f8b50f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f1e3864b02d3f1fb268719f70ae6412637635c5eed281c1b0b08f1aa03f4a913"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de28238abe75158b447b68bf80609176d834aba2b82333718b7fb0e6ef3c804b"
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
