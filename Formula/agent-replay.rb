class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.148.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "46a82199bb12b9fdc37f0368e8942637e93f64ce317e14831365911ede1a8797"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ebf0ca5e5e38bedea06095c699e17422af6b47dfe5aad31d8a785324bcb7e205"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9a15a02189f99fa3d51dff8accbfe32056ff168f0b76724d3571bfeac10f5d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c0df4ae11203ce3307586532010ae4799a117864ff0594786d90347281bf968"
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
