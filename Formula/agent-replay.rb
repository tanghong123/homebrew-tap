class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.255.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e6a34e83649245f712ab73fea0b4e4b680096b0f9352f2be13a2aaa5a4aa2050"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "188f727e375c0d677f52e5529fcd56038b7502fb00db54b26613d160f30d3c9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff5eb1bd00821af46b98ce55c61bb75e16f797283f7548831b60085c8df220bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8c5032f80d1af339ba239c3a453614c0a450218e61416635db8a18548388bd4"
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
