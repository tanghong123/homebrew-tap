class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.121.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "eace0779edd1315d90ec60690e4f6d950804b0aa40e13278ee223863a70e873c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6167e4239478fe80f6696f8c70339bd381422830fe4830404e5271906dafc9c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d65a7c8c10250ec1a3a95751f9125d0dfd0336d1ecf8e877fdcf6d8fcaba5b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54c09902d78ff79411fecdc2e50b36ec22c6c947496689d1732c6cb1d0410564"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
