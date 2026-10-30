class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.450.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7b294ae5ae8ed67c9fbe50cbf69ab6e0ff71aa62b240b5876ae88e23e7228db7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c92adf67898314758263048f0232d07a29009df0bd505198e4fe3885a1f3b668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "338b2112a920931fd3c82878387fee81b0d236e58fa35ae9e2da9b91f1c30029"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b51705691280157cc806678c3ed2fd5bc92708fd47c392308d20c80b0136a151"
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
