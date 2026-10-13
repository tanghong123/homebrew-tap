class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.375.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9ccd603887605478a8e8be63d29b9ccc25b4f453438d0cc5ea1ce0a37014eeb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "80e84d1d637f0f53998872757dd5031b0d01dbc751602d38bc496ccf3f433344"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88e12222ce3ba7cf8539b6581321071041b34ed98cabf774e1eb89b86efe49b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa42749b78a3c153650a2341a9b6377672ebaf4b6345125866555b7f28cb11e1"
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
