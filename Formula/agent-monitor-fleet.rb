class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.576.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "87cf2e1ce97dc4c975d59dc899d4d6f9109c2c4fb629879bfbd685665487b935"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1f27625d3b6c273e0409eea50459400714f596413a9513b30ffe7516ff030499"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "443191155765bf1633fb2159ab9427e4e27fdfdbec2e076c5790ea7d8d6ef471"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39eb20f17c016672cf824cecaeb3e8ab3ab9bcb0cea46eb06aa3bff4d4eaaca8"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
