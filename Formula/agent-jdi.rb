class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.379.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "65300fbb9e43a24f2154b42c6cfc495f927be593542b9f4e72959785770176fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3ddc63c124256d31fd42e851afdd9a528bb7157575f24153983d86bb3263eab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b6bdea8d094bd4698674984edc6b087ef5296705228229e4f7d665d9fea614e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32bba86b0d7f773a79514d1061d7dbc42dfa07c3f016c86a02dbf98e1cf576d5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
