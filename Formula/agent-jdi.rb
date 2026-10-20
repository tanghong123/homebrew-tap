class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.397.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "41339ca3ac261db18c0b294d15fc75df1ccf9a7e04d5671542fb8bab1f003b0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a11520440b2704fba5e5c788b9ec1f2c8ec22bcf6e441959fb205739f317cf14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61d11e4573be3997960a60c4d108d5588ca71a573ed7330621cf39b9009134ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18aa02a2f212e7e8d1d2c8cbdbf092a9f29eec1b52995ffacdc4e7de72ed5dfa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
