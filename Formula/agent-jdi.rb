class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.105.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "48312d540fe1418857fc8fb9a58c484e1891ce50684e7fc5936f3f806a72a838"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3e2b698d4bcf3d0d6bc541d9a98595a082acc8ae34b710354fcaab5b7ed51e43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f2b8c6b2f5291a9daf3fe99a3dcfaf290778ef4f41adde297bea4604e9656c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54a2de9d3e55a1631d4218cd48b1ee4579a99f1910df46133fdd2850604866bd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
