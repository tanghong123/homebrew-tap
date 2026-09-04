class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.168.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "03ce537c68e2c058d83cee3c54890278ca10e8381861e4c497c3f2d93cff5781"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "289e00f8df93a0fda70a019c55a5aea425ff68b54c53f164bfade7a20fde6706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "302bfe207008c9175efa06251d11bc29a0703459890ad933886d40eca85f8a7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f90826978327299a76d7ffc161c748f2e5ca0808f25c84c30826b2f9efdb1ad"
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
