class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.293.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7c735af0e264054bd4e2f2ea9b47b7fbd8a9c97d77be26078a5c343bad626ad0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b93e1f482b00e2ce728e69d5b79067cb1cf0eef834d81d62451da7f53ca1dcb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c4a44594185a7605e9de70837e6112cf0e4d267676a18a1a48c87116329ce89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab1ff0bce4d018e10267937f78a36a9b571e118396adcd184c1d57f125f10b84"
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
