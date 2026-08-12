class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.65.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "56c3f2b30bd1cbbc2a34e205227ae06e6c797377e8c9630364058f3915fdea78"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e632aab8dfee12ea4f7361418108dc434e96b4359745cba59ba3fa82cc059535"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "defba4a5fae434f170047e787f55c68dc2b9d2338d62ec9ab8ce78c9b6d47649"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4cefa4a404f6dd08fa33b9068c702d668e79d48b2b59b1acbb396845f795d02"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
