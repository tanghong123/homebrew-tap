class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "727d4a8335c2c0cd1ac5d9fdf633b6a4fa14ff95a6a4c51295e3fc355775030b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7b69f38d2cf9cb95d217c5dbc5127e040a24fa0f90e65a2ff54fe888bb910228"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2e79d9139233e49748d91608770f4ba776c2d920327a210139ea14f8802f850"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b15f2ca08acf2401492a4d77d1f6e61a845a76ead4fe2f5ee375edd59a3f9a21"
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
