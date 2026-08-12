class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.65.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b3eec8f4a58d1f6f09f590fdbc40b70ee766f69b297c260fff33176131c33a96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c9d32ff793b66384d96a845e181a12e84e98d2d9e829f294e92b95bc44e229f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcceaa9c272ec37158bdd750a5c43be081d85a18d75411e2c43da98eae35b334"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89fe5db96d70e960aefdd4e47f26ce21ec715fe9c07a1324170e873166ac4472"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
