class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.27.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08152fd2a2b6ebf9964b4a5e4ac2e1b0dd141919aa07e6587c48c40373a8816a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a5694966317775c592ebf92add8798851778c1b7079a6ca156716823decdcdeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fca775810689cb53d2d137a1e14256f0510d433515ef5c7bcf0e7ec380d2e1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1235ac5a52172569a47dd38f52af00e779afa9352767e317344b81adfb3cf3c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
