class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.313.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b6f022f67938f197f84bf6a56068f335eefb96f91fad6a117566a425098721bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "da928b68c913e6a4f7a432c04254a915439469470033ab2780e1c8369bb3b959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "71ced348c6dd20ed2b6fcc0ce18c57d2738f6ae88df00639f0470729ff5de04a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdd1ef3b8618e71a28093dd85716390986409e2068916f8af5e8c6a1735e8ac9"
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
