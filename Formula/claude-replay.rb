class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.26.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "72dc9801b9dc38013877cd97f9ad5f40d23781c1f4a7cab9daa41156a0254500"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "83b03585f749045377ee27194b69f519c0a5f53844814678ae02ebb015beffb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22ac174228c780a88c7b452e31fd8fb3dcdb347ccfbd3a69b9e66d40e8e507e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdde50ac82fa8b454a66c764c3eb498e316539d359c933eb7b4b59d05ef3ce08"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
