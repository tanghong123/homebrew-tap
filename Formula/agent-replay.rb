class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.328.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "346414e3b446a28e3c1f86d5fe458d35a6ecdfcb5721e7e804b6269d41d24f7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "665a468579ebe8b1940179b28b4a76d09358f3b8f84146753f993cc92d46caec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aec7141b139dacc12efe7c9de2eaa2a1e61bcea825921d5a2877b2edb06e0b1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdd0d0558edceeb7d355ef9b783dd23de3abe10eddb952775dc7c82b3b09e51e"
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
