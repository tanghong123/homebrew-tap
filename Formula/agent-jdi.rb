class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.351.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "20c1cea6ed4ee27c0a5037579c8914353fd3b2e74cf70dc6859319c1c30c3d5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea21031e03d0d21d424c5e7069552dd9024e25f6219348a10cf201fbbd2c5e54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c11bdbb4343a007fd78ea6d36b1b1ae97b96c5ada3e0812458e0ab065e56e0ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30dde4748c36dfab0338dbd5804005b7d2691a311edbecf8d67bf1b1d64e4ef7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
