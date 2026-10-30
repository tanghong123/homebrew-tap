class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.454.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "07100eddaf532cc261e1027a25bdfe64a8413bcf88b5bfe35df1e76a00b1d1de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4d8c87933c21ab9dae59f48884ea5ec63d37fad44b5e463498bc2cb4032a924f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbf5a83fcaeda1515dcdad5b104c26a4510195065b3219d2549bc679a348a85f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02acea5730076e80fdc402c21454fc7bff33c169d01554e240652a10033a2dcd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
