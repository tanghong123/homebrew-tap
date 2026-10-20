class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.397.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1012feecccaa641d2a707f83bc1c48c2f854eae47dbdf8e6d655c25d58b1e962"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5743cfed24d027606cecb113aa66ad82adc2f5ec90fba78fcef70ec67f290921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "758fc3e9fadf8d1bf245b67e81ddca31f9144531726cd6d8541d72a35ef9987a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af20aaabe39c133b3437ca13c736ddba74ed4f4a62890a71ff9067a052244e1e"
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
