class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.149.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9a5b1fcd9a3551ae3a20fe49577d9918b6caf6b230c9d821cfb2f00d032161cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "84d3f436ec76b7bdf267fbd9229df2d31456c28e5f33ffc2834a2d1a0bdfadb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8d7dfc8a924dd55b8eec399419b45d56046f32341d4b9e5384aa266f79fb5fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9fd47aca5ecce3cddfed8a638cd5d67a670cb43a9ad30e0bb246fd0536e49db"
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
