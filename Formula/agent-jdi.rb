class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.443.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d17de02aae1de1556b78734757a4e653e41bf7216a1dafa86507f1c4d53b29e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d16525bc7dcd59db8840c9e8f1c9342de98b9d82273b2c83f80ae242c05405bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "852b8987e20a0226e00cc57e4d268ccfa5a84ec9eec38845a73edeb869c33d85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb1c42c5da4a4a9e1e006ca9d5e99e0c22b5b2fb2a72399986702c4535647da4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
