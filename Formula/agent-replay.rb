class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2e0599a972c8eded7b0eb81dae233da46acff8ec6b35cae4532b5fc6ee85559f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b05fb9483faafe0c8a36d8ef9266054db8abe8130bc9819e774c3ca504562d6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f83a76967096c18499988e53f030b4b5bbb91cb7562de7623d2a35936595a04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fc790dc5fbf885e504cfcd5a4e3339e62e74725e8d0af14f259edfc97866a81"
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
