class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.279.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dd533f21d470ef75a30d51fa85bb7766252669ad4fb9d08ce247a20bbd8aa388"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "dd62809614776cdcf95cd89ce319bf42416437ae002a7bad958722524cf9cc12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29e81c766be59a109da7f1eeeb2ce0a336de041a26c5e1f246b88277a7249f3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65f1b03acc4af01aaf7a5f947e7bf4939f2ef0789b192fea3f68f9a24b12a498"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
