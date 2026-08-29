class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "94393036fcd5bbfff7a8ff2592bdf61a6804602a18bb6733ce3ba71e2e55f596"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "894d9906f3632ef3de931930230b89e1aa6dd2f2ce061b6d6f38765d4d045604"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ff1b207ef484c2ac1fa72a4478afb17c9ce44d8c33fbdb7459ced7700fabf71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29629ce0758c4f2df90e5fbff65d7d276b5b3cbad9a6910c24d5297f1c84e33c"
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
