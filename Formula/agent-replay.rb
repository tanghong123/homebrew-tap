class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.140.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "74ec9318ecf38ad39ac341cb1d829d3212eb16504ba89ee0026275c2ed620585"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "69a23a73f8a41d71d321531a34ea168524171865431a921bfb18fd9c6d6ab5f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ac2a4d533dadbad366ddd7e850b6dbde61307aa22eb2c5a28ac37e0c8406408"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a17adc7768f4f7d732208a1756c96441eed4155472604d4d139c99dbdc7f2a52"
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
