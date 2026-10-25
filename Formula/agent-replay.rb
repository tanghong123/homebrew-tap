class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.420.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "faa598b2c6d03105c5af0f411e4ca1cbc291157c7de788d5b401f52d0c91f300"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5c8ceec570c05816fca60b90f105e3b0a922061c78a2628225a7f4995b74a9e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "503f802c22d9790f731f50e5ad503dbc48a450c5a6a0f37e234345ca038b2ae6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99ff972587cedcc868d5581617e3f6009619323e4433e48fda27579ec486b9af"
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
