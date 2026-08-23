class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d07c8b3486996d11a412d111ca54a4ba8a008dbab2fab1a01edefbbf368b1304"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7d4cb8f5bbf78b0605467d298a5c2b7367ac1c54b0a566fe53ad38c4deda1d5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db7fd52982fde3b89478579cc37da454b5bbeba119f435b628c256cc0cc10028"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6c9b64fdbf9a4938570a21e3c8166ba579cecbcbb4631201580b09947e44a66"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
