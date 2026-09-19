class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.283.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e03b24db55116f9018953f9a08d6ef04e4ead7dff58f34abed0b20c4a1f6afb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "294248930f1cbab7f2cf25b319f331bb30a4f9871c84cd39093d9a79135ff492"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a880ac34d827c44b11fab18c88509705e6b4e6efe4ade20694d45f0496e2b785"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84b5eb990d40d0c0490dd22b0a465a8dfac9fb8e5fa359b11bc769b106a2ce74"
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
