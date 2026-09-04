class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.156.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "310372baa485224ebfba13b22985b1e60187eeb26124880b8f125922768f049b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "885cf1e7dfcc0515cf83dbd148777c2d920d8817eb4cab18bd3fcaf43b93c5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bc2ad7b9bbb8cb8b0d0af15b8924708c34b551671e1110d0267109a634860fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c6475dcb3fca258f8f32b3882e3d5886e0b0afb8b0437af4727e8fd897dad3d"
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
