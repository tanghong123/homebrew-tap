class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.338.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d27e3a35bb312de02c74e7ac7d7b634b679de9db138129bdf932f82d46f236c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6634787a92fce71ae50998c5f776ab53b14d40ac30e38a0ff0d5879d01c99cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a730f3d77939273262d537a7624330d9f1927fe2d9d6e99d3482a8e82de31d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00927949a81cbc0b92e0d3b936396cd304041f35cf46fe1c9f2822e6b2fc3666"
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
