class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.568.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b522740cd06db129302e8a4e00dd09e58b22bb88d1a17f9de8ddec6ebc1a546c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "10269b079bac175094eb8beed7418e96239387bff8d19df9e01539410abefeac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e75e61151a0a200d1d4d0351775ff18ddebf1be2021ac8656e1c5c6deb754a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1dbb12b460a1135ecb8999ce7b847c2c9a1a886104f55c26210e4b977e7403c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
