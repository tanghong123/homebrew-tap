class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.487.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "388fe23b86c83692ba0abec5daef029ab1e7665d6aaece97dced6224c6544fc1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dae67678ee0345da0a5412b60f87e462245ad51a920030d97d51fa7c03e0d132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c77326f0286377c57413fcd0bc574fcd5fcf2588d84f79d169277d46a60f6fc5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0f25cba8dd1fa0a2601d7e1834398be01fddb073b96a5c76f5cf09333bb192c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
