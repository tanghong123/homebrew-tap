class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.31.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7f9d7baa75b181d9deeaaed09865fef42027e723eb658fbb3300518d17e194c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cbe4637be51c36518cfdb49dc967206477ef8806cdbac40faf7bd932d6e72c26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7df6032e26fd5658ab901dd8c6279a7a76d10bad60ec2f21c1435fb76356d437"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14d6894de918867c42a90dc7ec77771d0dd455858b5385ea9304113c22f98041"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
