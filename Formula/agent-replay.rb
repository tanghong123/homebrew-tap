class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.143.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d34ae5e6b8cdec2e9dfbbdb5bdfbd4671ae258ea2bcdae3496156245b786618c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "60483a0209c4df2e57898e725985e5d2f5ab1ddc875a972c179bc0472c2bd656"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6cc6d89e9c40d09d6fbfe23bececeaaa934e2dd53664774f92bf1bc49d949f9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abb4308df9970c1687738ea46ef90246823137cf620a1a4bd5fff3a6864da8ac"
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
