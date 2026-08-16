class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.84.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f5c0b84c653df7d2014f39ae5dfee51d990698fcc1e05e4f2576987a859ec75e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "59b59f2b7aa49f6d2caa0c5b4b87411c918c8178aa220d6906e6e8450d7ca793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e4fa45dbd7dc7fced737ec1c064252231d055942bd0f8398a74110b621e00cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d42ba2900ec8b652a7ca313aa2e8665a0541e45f3fee3a7a140f9b1b2225311"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
