class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.157.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3634826a460fbda966d7554aa7a1354691871baa83954ca7f14f41737f594a0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ebaf36c900b3c29e12333697bda350416b9e444acef7dd759dccbb5a9bf33b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f74ddca749dd6d2e0b671dd07422c07173df07f3a24fe66824efd2ef534f2e3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27fc34a0eff63b2aac7f631e6a5a00a48dba0c57ebdbaaa6ca1273368f50985f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
