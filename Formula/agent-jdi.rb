class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.258.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3483c5b1e6f7620be53b379d0de39c05f72c8fc7c7943fd2efb07169dd51cf38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aef0ef7f51c6a640c8b32991f6e82e71f4daced4d35f52c191cde5d70f22b053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15c5fbb822beac83556ab1df2df782de600c4bb582f94ac1c1c13be47bbf9022"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03b010fd9ebcfbc68fe750b6c43da9e23589f53d3113d965f18e270acfa29933"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
