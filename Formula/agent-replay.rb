class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.390.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c50b02817403cdf325e8fcabc4082d3404232d2d8029233f16780751c1fb36ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "dc34300e059bf237f309c6724860239b222289e7de9ed0094bd6a991c3f0527a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c4ab47a89ebfc48bb82b777bf265c097c1ddf3acf87d970b3210df9f35532fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3827f2d3708ac3d65ae7c8df231f5dc8d06cbe32cbccfbe8037bb9b54fe5b0da"
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
