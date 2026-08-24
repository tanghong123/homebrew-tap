class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d4a481bd6717c2e9199e2f67b992f0990507a5e45e06f3605bd81e8dbc759188"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "16ee8d78fadbe02d1feb16885dcc06f8afaec44abeca9bbeb387ecd30b173e1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "729754ba4193544239d7ed3667cbf9581261410c996f7f54abe149fa642c10d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f35bded7792399feea98471dc3c011dcc3f4a175520de2d000ab7cc00c3ea3f6"
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
