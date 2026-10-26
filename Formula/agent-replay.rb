class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.426.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "649d009e4826aa732bd14ca351ee9b22b0d82e96abbba74ee0a518eb55387c14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a2db53c0e6395088a7123714d52f8dab8816f7669cecc95e24e47c4ad1346bf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "948d0b7387a7651db800da0a575af9a11e79474275534ecef1b747d756fd10ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb66ca8e0ff5bc68de29810a4d9a954a5c8f5fd15d665703154f14f085425183"
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
