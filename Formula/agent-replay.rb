class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.430.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "61a5624482ef9a3cba3f61a0c06312db13538b05c5ea734f3a967c801dc9222d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a2036ae5a89e265c9154595b74774b944ce43c95c3690d772eb58cde31711f66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f969bdd2fbde358e848cc86ff406fcfa2e9635af2c38ecca85e05fc7c134d7e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ec1bc418a13055472445348ade4a628c4b184ee096152949292809499b32e22"
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
