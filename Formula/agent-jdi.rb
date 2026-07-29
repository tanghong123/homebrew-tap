class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fe36ff133839e997dd75f930e487e31606dc6c1c3c1ab8f7c555f7cac20e6674"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "145e92ef4b73c75beacbcb836989d533ad191b0c294491abd17fdac50ee0f6be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ac9ed34fd8a2901362e06d80bd377b6b4ba425e910459561d67ec1706f5a6d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "728d43d75e981703d5cfb58784c7fc3007a82c6a57be3c91e287898f2b553f0c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
