class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.515.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cf6284e6191553ace0d77205a4a74c2408bd30cab2841e214c526f09bb891f3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7fe3e3d92af563e3d30aaa109ba7f7aab02c22bc6a62779ef0254cf5892fbe8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f19843425ddf0249a6e06306d4c65d4cc21397464c0d49c57be331708748251"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66b4cfdfbcdb93b6d10444e569dd1e803f10fafd11eb81d74a0f3d49b54cc24c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
