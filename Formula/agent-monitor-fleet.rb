class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.544.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "589b3caf9b0379dd29c1a7a331816f3130d958c65dfc607211f4a5c815a90c82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1c8ce7e9e2a30d01f948c5eb0680218d03dc450bf195d95edadbd322ffd3d833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0a07223271d6fcde37a80ca5d1441bbe252420849cd092ae3099dd1b5858940"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2cb92196f26399d03dec32845e48b12cda75d11c370eaefcb61bfa50b0aada4"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
