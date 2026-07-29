class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "17170342ceeae86e29aa867e038ca04fe4c6d7005db09a049249f9cb0948148c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ae059e1e732493bace66a4e90ceb2f17f3a4b67a849ea2b0110d5e1a31eb0647"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b179c1f517f93d4171daaca5b1b42ea6e565483478d6d604e84942df90ee724"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d6d7a2d16492f8670e8c6e0974dbd4c7aa1972ba11189056af3766bccc133dc"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
