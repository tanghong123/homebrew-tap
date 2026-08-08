class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ddf735e0eb065b380d2f483ca74fca83a4886f0b477a19ff713c6b0a7f03e771"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d5d24cadc2ea215e5b2e7a65d6f018faebd96a56168781db040a1be10b1bfbbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1444daa8edfef0306aea808cc14ab2751e9e5d6f4214f172d069836476cc51c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e43de995c66edcecc2b2717478f636971beffb665800885ed49cc419c6542300"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
