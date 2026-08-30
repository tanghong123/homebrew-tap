class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "65cb0f180d01ba56bd4e3791e0318ca4cce851203314c0bc1918c55d2a5107f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b491fd8fbdda9a12fe1cb9c782245cf59dab75973143a7c156202f16210dfd90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ca25b58fa4a8c6e94f2ebe0acf674674dda2e19f76596babfdcaef55f5f3f6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cfb1dcfdc6e4beddbd328a2624507b36c2ad9789be06c795e71d6a19a708432"
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
