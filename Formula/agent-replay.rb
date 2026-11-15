class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.525.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b700e5c0e409f8b8cfc4d47f5c88a4481ec44c5dab134c310805eb30f06cc274"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "02322a47ae7a98ddc995c1bb1f676618da30d5617960ccf7d94fad071bb6713e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffbb77a8a363470249d901f9557ea2825d463f3aad701280dc9ad80a9bad51ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5cad39bd39199692a161efeff8211df4470796f28673a68461ecfe787a6deea"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
