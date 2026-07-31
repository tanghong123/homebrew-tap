class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9b37c252d585b17573b982751f4db9c98ce4f25ed321aa57cdd3b29d26da171c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4cd806522902ca43d1831444b3b886627b0de30416070b569e475d97d0c52f4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "820696be9d65597f9e8d4a8ee77f1765838428a7b763ea619bbd19be11e53f45"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8515df86522b684b0019c09752214ac0f16b8a22454c2c73b1d5afae5e775a1e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
