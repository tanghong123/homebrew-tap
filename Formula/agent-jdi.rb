class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.223.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3295df75e1ec7275b4d489095af22df8b6c3ddd6045d003b733faba6c558e8f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "27bcf6fbc38f6e70ba9decad42331349f699c3dbeb13dad28050e2363e528727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4dabd54b323c1839ae3600a0b090fabf8f23d4abc0ac9d158ab9ceef81538ae3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cce9dc480df641c9fd142a03011f1de8b5573033648cdc151cc7094c06d1e78f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
