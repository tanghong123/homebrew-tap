class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.423.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a1e21ace3ef57764b3e295ef0f6e3938accf9b07549e0a6c56daef016ee16302"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cc38f199cb384531eb2c9a192cbf112c6e7525aabe2399974a235f6b19332e41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fbca7dda5cfb0433791a7476da83aa255d8c6f2f22898e2336133499471e5867"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20816e16a3eae95819647cd261cb6cef548a2baf055619c579b841d0d2e615ee"
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
