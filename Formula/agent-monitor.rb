class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "253de75343edc6f51ce1a3153d7ae4ec8d3c858cbd62c3b5a9e0fb12f8a8471b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "806e0fbd27a7976619eb06e7e8748f88e769f817bc4646c9def837ea64491f9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8835f3d39249ee7a66a92dd7400e4c0f82142c57ded516ee9e519de089a920fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32a7aa1f96a9a01c27be4e798c2cecdc28570b8e3409420e97bcdeb637a89171"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
