class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.36.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9d0b1886db94e2f913e971d56f6c228ea959c16c374bbc942706e297da489b80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "46329c61c14d9ada269aaf6f7542e836f44e50435193494f597d3a9a9f8f1d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "36e0fc52dd9bedd9fee8fbb8b4ad5d208725fbf11729d2bb058b5176d7d83cce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a515264e1b875e7296d3501799c953a2f4f0fe1173e8c75cf66d3f8074aebc02"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
