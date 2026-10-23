class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.409.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "56b282007d8f71e4fc7a2d9a77f572e89d7e696722909f0d0819f55dab860162"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "140a9c99fd2ffc4416aba5025dd58c25c1a4706e5aac0087a3245631b4c9ebca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7f09f50d4e3a28681f742e17887deb643ae7a2c01734c5dda0c32dad61dfc49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ad514848c7e25f727a6eae9977786e6775e770d4120d74f257e525b1bbcc543"
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
