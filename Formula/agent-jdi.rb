class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.359.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5af9fabbbdde606d315226c38989093c3d023ec51c4d3251f24ec6f5d9dc33ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d03da6256c137b756c984c65e289aa6456d6e5964f1b89b8d0d6d26619c9380c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88850141a97d473a4eb7e7291e1fb34162fd80386c3c2e3f61b87c8285d269d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1adcb79fb25d0486efa1bf365d27e4035925313561101d4596ed12969e998209"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
