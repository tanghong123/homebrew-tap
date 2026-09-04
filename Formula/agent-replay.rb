class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.171.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d83deceea2753eeafe865fe7210dc907e251d2dfdc210dbb0f31a6b1c327363a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e2a997c68f729ac417fd01e8f242bcd783a79cd41452ff2eebf661d05a8589be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c6c2a07353c2e10bf558c4c3ac2b8b8298b85f50da774dde89196ab99eddd6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e6414f9211575e2dd6ce2b757c2cf2ea88c64501bdaa4bac3142ae106ca1b2f"
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
