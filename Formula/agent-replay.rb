class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.324.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "670dd664a0d5349d7e701240e93d6cf39421c1514139e80170d033325ada11f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7e8add49003317769257c768ecb8e79038c1878e977674add17f0a400776b1c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9282fd5110625a0c67d6d47e0287dc775fb95be35dc49134b33be90bb70f343a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36345b9808e1744781a976fd748679859b6d26570158216edb8b74d32184d1d2"
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
