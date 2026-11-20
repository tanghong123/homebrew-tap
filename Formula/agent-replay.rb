class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.544.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "747f7eee10255d71113937aa38436d837d733d74f272849476ec9be773d1a69e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "709dedc1a33c490ef0cd1e5b576fa3b43ed356056abe620b087cabdf1250f863"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "927fbd04de65d66fb89b977e87b32e2e674fa5aa01239ccb087a8751dd55f7f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e80633993dd7285f9904ea10585d18aac285d1a77607d43801430fc6ac70a22a"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
