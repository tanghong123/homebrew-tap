class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.329.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8cdea2f42cf77d950ddade0254ef046915a5298360429f96619b110b17fa9449"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c879dd113c4e64117cf7a978acfa120048d2bdbe0dd80faccdf7d227ad5ae040"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6b385f9ebda2f29ea525f13e5294d3f6db7b26983722a94eb0e2dbd154c6738"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46466088b708c34d2695dda5023e4852243d596d9bd6c91502bfa88935f6e45f"
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
