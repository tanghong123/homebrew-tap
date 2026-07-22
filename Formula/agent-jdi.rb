class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.7.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c803abc22fb532de334fe64a0cf4d0fee00a4fa01d4d4a1fce7c449946b4498b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "470484dea9fca1d9617187f10222e1ce311c3f97f72e3486445cc052d435d024"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa184c22d638241c310976826d5eb1d3d60f4bc92329cd1048250aea8311595f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5135a9cb6cee37ee5e8100520202b196fcb0ac6f79357fb44703c67a0cb3666e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
