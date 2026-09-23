class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.294.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dd21d2e7c97c927733e37aca22e7c6ffc3023868cfb9088782f1f1c9915e5a39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3e98bbe8acd27c59ec4f9154739a3416b5b904984e195f6b41e4bf2bd8692a71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92b698ed5930535bde49c4afb92b0097f048226d05b842288e4066f5bc458efb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a52dd6fab62f25134b062d7be1e50ed5abecdbf100639c8e852d40bb55d6d88"
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
