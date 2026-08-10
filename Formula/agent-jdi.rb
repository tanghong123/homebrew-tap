class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.62.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "285fe278fc29322c3df7ac61a3690761c1e86b616b77a41751e1463face6fb37"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "48ebeeb5b989cb0b7621d2d0d8fa4d3b66621ecc58dd260f845031f6a32b4a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72179e263a96304eefe65c0dab3feb38603d0d5c26c424bb75a39b44dc67005c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "586e8268b8d16af17b5092da7308025d00633d81844b1ec0c60f127b4c4cfea8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
