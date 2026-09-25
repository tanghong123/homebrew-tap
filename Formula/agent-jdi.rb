class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.300.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ee99b57bd068bd9b811630785a8f15380a9ad292b791eecd1d2fe530564dccfb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5f21d5b02af75224192b0321eab989b73eec879688e295e469fd37be3bb9c535"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f316b27698b3d94ea29d1c2f347b4a25f10b8cee1bb4c3c6ce917dde3dc39ece"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f3b4b0804ca4517bb6fd60c526d16033767b3d824cb1363bdbfd72413d51082"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
