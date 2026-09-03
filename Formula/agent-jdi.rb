class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.147.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e9c390e771025dd319a289ff570cba18b7aa56f7e1218e54b32d1f7cec419ccf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8e440f3fc21871ecd253e917b6a470529a138820058091f29867874e99928e33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dea210f0a275713d7b1be4b9f99e89ebbbb83c96117d2b9517365d911a6abba7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e72b7cde52fcdb2e1c5d645e5ff741639e7d33fd8ad88d11f117796ec1422d87"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
