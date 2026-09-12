class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.260.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "60c85a58cdd9cfe8959087cc4ae73a88316020e4226e05a045492a2fb17d78b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2ea9f0683c3f9059fcfe929f99b4a27fcf3e6cbe228b579a0621882de1d48c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7684bac13a2bd3d3d7a46d8aeb1d073c3066b72631a55947ba388fd57b5ab374"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95dcf9ec76ff505cde3542bfb1e189a9974496e71e41ecb326da12da56c996bd"
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
