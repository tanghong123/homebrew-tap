class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "67e396ff5da93ea09a95d94713bfae7a064cc520d14386606586ac2b80aefce3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "05db3be2ed72603f470727d9c4acac5e394ced8b913afc3596f6fa3c222a1b15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5195c210f497b14c6cde239d3dcdd2ebd8fe8272201b4f92731bd5283aaffb8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7e7d281b946da898ffd0764ba6e9e7cc43973543b832ba8e824e0ed3f40fa0f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
