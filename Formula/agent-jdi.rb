class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.151.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "99855d9f9c3c32d7995c78aac8b666ba734f4e38656100d065a4f730dfe25b91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e7361667fcdc065f549ac4cb71c0f9d00e46d6dd747e6b2f7dbd9a95d8a61815"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39c26d7ed98283b26ee1e734cec834265c2b7a89e5217cdb8908861405a2480a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71dea61719d0c711b96c5eea0282f6014fa57ef6e3c70f42a6103ccb9c3b243d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
