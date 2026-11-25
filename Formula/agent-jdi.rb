class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.567.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e487e62127bef24284b73b6534aba48b24143e28fb43c9ffc3f7e9e9b068748"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d105a6729fcc93d6b6cbe961f620c98d26d0b456d3751fc6707e9cf70d40eed2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38a0692fb9e20b6ca91fa27f187b076521e21f6c146e36aa80b0fbcdff0220af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23108c932b927b08f34ed99117a09549b0be5b8234787db240c34f953bb0a298"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
