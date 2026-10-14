class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.377.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "73ed3c9dd8bc7060e0f14c89ca1496c09de6230f74f4c544d83f5dc092b841e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ab20df98555aab5d09546bd146d8c306cef101c49c13d37659a3384f9d7bd5a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "481ac1560bdf8a51c42322f11a066d9574f6a74fc4ffad6100a30470db2511aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52f456a0f16456de4e7c75172d2f3bac1dd89154ab705f31af457dc9fc571380"
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
