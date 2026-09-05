class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.189.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2d3c65a4bc144a2eeee5432546e576a45421a77fb4de215bce4b13fd229e105d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1a54e2ff68e03db198a2cd78c58f51477d0e51fb60a8687458a798913f824a5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfac5727ae4a154e0ca970d2ffd3252d28276dae1855a3cc67e4c25deb5b6f64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "955815920dfa3c4b615b540e7cd3aa39c723843a7ddfcdf2060318f29673fa64"
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
