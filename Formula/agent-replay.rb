class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.160.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3eefd12c2bb3fbc80a5d4e281347e74c26625617b1791d704da391e911f947e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e051bbf4f4d3439071660a09752cb67f96aff66266a0e4aa9e6efca23a1a8da8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43674e82fa76f913afbf01197772465f63c5acd680297eed416cee011daa5db2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eace1713f4b740af26c773c12a608483987ecf4ed886b5b6cd43959f469ff5e8"
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
