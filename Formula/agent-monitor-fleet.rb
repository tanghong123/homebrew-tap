class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.400.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "143af5134d08633c99e464928b1ad2673a8b349e4010530382f1907ea103c7e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fb81e14404e85df5f816fe707e1bee36ebd8f94b8b05478c6a825984ef26ecd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27eae86ae0a21de7706344b4f291a28fec3cd57fc45b949b4d5259fecf85ad16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "580b31e16506388c183d95f57c99f335212951f7ca5a770faebcc9993455f897"
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
