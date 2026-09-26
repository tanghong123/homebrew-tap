class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.313.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8dbcb876a641cf9f2e419b53099e865fc44512b7de6c8252220d0135bca652fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4bc4cc28fa1ae0ea0ce90669cf54b3893a5d24fd101c61d3204c5d3ccc9d10cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dae1863aeca7ccce92e10d87117286bac9527016cc03135f81c1f29bd36f0a7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ca56439bb7259a6817ffe7c4625de88c86f813d34db4319a20276e455a332c0"
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
