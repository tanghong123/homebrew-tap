class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.365.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d7286b9de7909839a679d0840c480f50d799453ed9a694dcadb551c24d04ab6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5291813215baac61bffbebf4b67fd302da60cfac036bc37fcd818a13db7b50ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a5cb21f0d1b2172b499cb0d13b499fe6429609eb702200578253eece4377f6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a3a55d7978ce19ff618fc61393059a39d81502457c4e74b7f9be7ce7524b533"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
