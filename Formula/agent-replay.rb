class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.299.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "578e39c89ab257477cad8dcb0632b2d623b02a3d5d682b31e0d6544e28cf36a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fd24ece0d3db2cc79635ab6f53a063fdb28b8b69a77ac70f49f84a6661396cd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fe8b4947da98ddbefdd7ab907d11661c17860bb2d7961b1141fd4cab1ff688e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4fd6b0f8a339ddde747fb47afe65545248a4a8e2c07d891650a7563f82b51a3"
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
