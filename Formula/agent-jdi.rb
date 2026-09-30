class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.333.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "68abd317ee0d5b87d7b1a6610de4ee8a84654f4d43e69bc27e7452ff54465886"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "077cb4c5df138673d782435211ad2e5a1b6aa6c3b80e29a191f49d08ebc0357f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51a263dd56cf03158b2b817214c72e8d3ac759f9d0abb30bf86a1246f63f4172"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86f15490f61a036068ceb0d91a62b728d4c3310c689d6f626bdfc21d6fd00a26"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
