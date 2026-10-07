class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.355.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e5f07e7d9173f24e9013c799d9cc77aa1ed69abb10e3b13be74039ae8aa6762a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "be58c4af871e55417b773057cd04bdcf2840c5f185b5888817f8dc75464a1a3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "871de430ffb4eb553e3b8c4ce6f32f603ce203563dfec98439dab94d88ee1f24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b630cb2d9ad76158320520d0c4170f7c3e106075880e0496048eda59ad72d2ba"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
