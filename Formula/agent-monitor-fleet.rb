class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.245.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "04079328a358f497362d50f6e5f8ea9b8d653d2e98abcdae8100c58c688cd2ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "739a50d9bfee58c626df1d7a5c9d66b3c6505e3626247f11d7ee3ee82651b714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75fe0746f8b785ee787fd09c556b9768269e90046f6acc9acb3e395c8c4b2369"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc6d1b4fc9533473e678209cef81a92997113b8599b2492a3eba43f6b93f6310"
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
