class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.175.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c954c9158894484fda1ebba88142d895abcdb3fa4e6aa6c0d2f65276a34e2e1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "66eb46e2f5e524ad25b91926b501fdf5215d365c49e756e1ca3d4f293fb3db99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4cfc5a2dd5aa8a563b5952bcb8029056c8dd99afdf7ffd159e200be627c33d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59ac3a849a99e68bcdc067674bb5861909fc808160d0ef28c82794a038ae2551"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
