class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.508.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "88c87a4443e89ef298c715ecda66bb22ae9b2f4b443a87ae573cb91b4c842c17"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "147fa606751b3994c72b78690057d03c5ea6cde140dcfac2aaba18698e1fd8dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "250a9855b4f9eb8099f8a4de79455ca9ed65baacc0b9e4f5de34da6e27fa762b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "508a15f7bdc128a676ee541bdf29f90819db5cf52cb2a0ed6480214f1c502e33"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
