class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "42f4de797c20805cc834a2d0e71ba2630846a2b504723fc265e1703d491f6545"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b11f105fe2b210707c4500deae1a526d93be9f0d885226363c47682cb323ef6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3dbf2d020173e7208ff13d1a7aaad7399930914be989df51cd0fa68f8619d763"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5d83e908c83fc81583ad4d990f459767bd131cf29ebff8f690a2b537edf3bd8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
