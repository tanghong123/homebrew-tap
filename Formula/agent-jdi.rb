class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.169.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "519c4e4e094d3fd90abeb842dc38c1e12979a203f477479e9d5e61b9114468e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ac473d1a8ce670b9c8ca3bab03e7285210c520c97e9db112d211f981926a43cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c797f62eb91c6e26b7bafcff16b61eddd68163f830781e66be09d063c7e7251"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc61a27182e7d4dd4282386ffc37d796f8c81ef7c734691fd9ce0dc5977fd972"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
