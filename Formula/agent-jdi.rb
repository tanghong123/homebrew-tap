class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cc8a86fff2ebe25d3274ca5ac47c66d38748f99c62a621d5d742e3e3fec2b58c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e1f3f48e9617bb1ebb9a99c4f3340d7c1317b1818f6e42202753c6054f2dc2fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af3ef0f64465915d192087a2b3d3d38d60bae8fd51c2a205009136c990362021"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32b83cd301f4e7e1f20e29cbb76c1cd1c62382a8a7aaa0c6561ca37e32c39fa2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
