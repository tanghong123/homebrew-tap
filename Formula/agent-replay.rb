class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.348.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f09ffc6572147f881691997f5cd610efd455e0d1ddd35e8e0c2558980c180f50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f98d8435ad372193806983f138813e038d43ebc3a5507bd6a723bb5d0eb61b04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc0e842f2d404641860e2e3c716a0c044035989dec99545db2da0d41748aebc2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce89bf76e6ecf3c1c78a5eedd74c5dee22522e8c59eace9db593896b14d060bc"
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
