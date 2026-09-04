class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.170.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "71ad2db6675f8e8f498fe0e01092b352f8cfd9c418757414216bc47013aef9c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "af705db39f3434590dcd6c10513c3f0822b3036101ce56451e7cc310434eac64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff5d393de9b7ea851accc4bdf65c5263a95d99df4c24abdacc7dd5ae1625e7c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0370248c3c448771230f7fc1462b631b080d1fbe57533fd0e78bc374d78bfa53"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
