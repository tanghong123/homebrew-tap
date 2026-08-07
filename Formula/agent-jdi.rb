class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f7e0bd82ee937e53550c0e1908f4c54ba81338a218898c6dc76322b29e9404ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9082b52d5da815fee421a3e7e469fe958e79a68dc6c3ff32d5e33511fc6c4cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e12b062072bcfe319292f7f810968837b2883c42d2e4af1a038918227ebf1dc2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8eac83beca80490cb58d4d9743aa458089b9babba710fe86920eaa6cfd1b98da"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
