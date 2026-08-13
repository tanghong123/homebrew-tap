class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.69.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1aa533ec0752f404564571dc1ef89017dba2876bb1bf196abcae1eed9318e043"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a92bda416e33abb1480c2f47a936234295aa3d5f182b57296d07cd1466be5c77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a40d842cc323bd6c2c65833de6dfc35b56a98693a456cfa9a65f6e1b7316ba3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf5b4271878536c22a3809e849e90e57326a187ffb186442f6b723f55cbf9eb0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
