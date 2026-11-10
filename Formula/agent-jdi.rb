class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.506.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "65a99f836796c9f63b91362b85e34ee6111c2d10cfe760bf398e223159f650f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4dd224b775d9e618d180b71e3fb83b1d95e3b7f33248ba8df519f22d5feddb71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2bfef4647f4ece24fcbeb1ad2ca208ca1bd0669932a939afabd08bbfc858a415"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf388daff9ac6922edbc41faea2e970e38d955a33990334aa5c1314b226980e3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
