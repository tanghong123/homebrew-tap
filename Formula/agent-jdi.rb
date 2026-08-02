class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.30.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "07252f6fb5ac37ae459ce227f0c5fc340190a923cdad835463be8ab32aadb295"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c6774acf6a08b7026756ceb4aee221ede8420c3fd1984f4b0d13c80a6ac48a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94161e47ef0ade187740925b8c0b13b28d180313f8b04f63a72091a857ec4a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98bbeb79278ec92fe8814c121c2f6b46f8d9b952fd6fcf72f6ffc79d5b16ee11"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
