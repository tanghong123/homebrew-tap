class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.452.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e3bdbf7abb5eca647a35bf48357aca4daea2ae73660f94433b5cadfd4ebaacb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e0ff068ce91e0bf9f293c2f95c87b0dec9a70f45c3396a69b6515e4f2e572399"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ac818eca15290241de3160e2805a590ce5f7bbc8c4298704a173887e6630bad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "900b07efc3d1fb33e3d39b1e8675bbc30ec0f8a4fc66d21073eb96e0cfe7fe2d"
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
