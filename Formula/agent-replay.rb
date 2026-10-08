class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.363.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c81fa3b063d1a7082b00dd0af490f601e6d578f4545167c211970402042412e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1486be41a37db81328d4bf08d572d7c51dad7b727b56c6a195b8f647092b19b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "897546ec50d765ddaf3211c2be6df0b9a39be06f4b034afd8d0171e705be160f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c345046df89002bd80317b97d3c06098896f01935910b9446f33693523ebd863"
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
