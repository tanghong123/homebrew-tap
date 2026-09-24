class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.297.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "41b697e8bb0925494419aefb294ebcb2d6122c0d1a781a27dc11e3512c540e94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d090c401571743c5f746dc515bb2404af981e7204949f57f7358aeba3bd52104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ac1ce35118374984c19bb89561cf8b85ad2acbc42323f463e3af1362f0a30b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb0b94a8392cc7272dd8ee6a348d5e7a1849ac493c54799a74e7da434130157f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
