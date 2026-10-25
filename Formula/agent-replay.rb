class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.424.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cd64c2a626083c2a27be5bd579828a38d2c8301876300c867eef2c71d5283f9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d7259516d2b7a2ab498641ce09e1dbaf651ee68d6754f75a347a987755130711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a48dc9d4dd350ea975fbe3739cfa6eb3066b33e9e7d7d1bd242cc5ec2f1e44ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba7158d8569c4352682013619df8526b4368eb4a2b3020d887a92001f140f5c2"
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
