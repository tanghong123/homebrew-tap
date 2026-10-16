class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.382.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fb0cb4349ac9ee896fc81751a228838aa7dc5eae7b3b8a5d8f2a7fc5d6513409"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "06a75f02634aa922040ab078252065a8a0246971632febb216f5bf8286ca4f5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c854f08d53d2895108eacd27739d1c5e432672604687b33409a5417a998c96b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a83a4bd79afabb458b3ebfc57456fc472108c034dde2334e31ea8abbea07664"
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
