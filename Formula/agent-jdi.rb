class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.133.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "da16a8a4eb19a8d1c093bacc82640524483b47f1e5931be449bbe904e6cd57d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a57d822187d333712ff83f441f766570c1649a78242847023449b3a51478e3b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26000ea6f268325e80a4528d4f5a8b97817f423d9ac1f915a28d0e8865d2aa43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f39ce2f179341c2c1a606a98c9de21043cc77d497197a7986eff67d14689fa1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
