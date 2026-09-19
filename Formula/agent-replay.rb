class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.282.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4a7b4e495e5066bb0dc6e5e98301291935141ae433e6a5383db00fb08ad2bfd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "61c08815fdf647da0fbd457db57f80b23f2d3bf54a64ef5c835d274c567092a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c31522b48627f7bf41242220832b2710c1f5fd2962d371bcb2f669cccc8e6e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62781fb2df52d91b751569e64e3d4f72602112b77b749eeab4b0c2f0e632fa30"
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
