class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "162ad8f77dfa102567fdfc40669c9c2b6d744acf82c2aaffc7b3a60d05e66efa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5b251d6489827774a8d3a97bff29f72287d01cf1bfb1c8f29a2feda7f071a3fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3128bef743199c4a68ec40ff15b5f7766d0b5ec03dbad154e62a993532fd8925"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59a342e36314946eb37759e092f5edd28ba64d8b414edc2b14a40ae534ab6f22"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
