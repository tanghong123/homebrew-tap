class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.1.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "51c21b1f6a2eefeac102bca0ca223a89af0d86a1144fb65e04ec057be1d31f02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e596925c62a2460da5b26c54ef34ea4a55f7c1ef30b31a005717745c6b11750a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "640a49fc80129be2e67a770fffe87eff9ad87b0dd399b5a35b9dec913884fce1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d306634e48ce80db3413639d56bd8af40ad18f44295d33ed2bd9fc4435f8b41f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
