class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "13c793fea96666317401a13f3bb333ea7c34c1b4fa5385d474a15d9969b8acbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1d897779b02ee6138e67c2e9b2f12c49d737b95c1907c51b83eb2ca94d32d414"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c57b870590cf792900a7f1fa26e0456d7a7a6f23650624c189dc433f5893ca2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c4c65e11fc3cbe1efbb7ba2aa7174c0dfd2e930c508337bb56a301f8793414b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
