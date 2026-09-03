class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.136.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2cd228890570348e860e9f7d4330b74cdbf4d05db0b48babb92f9ee0f44116ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2f58af66fe39120a78a566d9d23f0d08d2a703763b58a50860efcf459f999226"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8307dca1855e2fe274f31005d978932ba0db6fdb46e635a1deb91158de1d094"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c109b3cee74244579b74c088e49082d79416b548c7abd1dbe094a8a2e9d33c59"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
