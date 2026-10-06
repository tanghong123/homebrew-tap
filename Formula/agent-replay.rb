class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.353.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1ed7f5c46b361fc7f372607011abbdc7e9beb957da14d3a3911312e62c42edb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ed2c378b0e22ac130436198f8470c60e0438da5776df00a185e063f6a1dd5e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8519edef561bd5f38ed20b070d5dd8317bfc62ebad5cf1fe208b4a2c0f52f6c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a54cd8e1207060093e05e7458f76ecc3e72f72aa73656746e256e529149c1847"
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
