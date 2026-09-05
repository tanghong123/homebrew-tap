class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.200.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1ef5bf4459fb906fa21bc3eaa8f3b78291870791792dc51c45ef2e30c996bcf6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "726fa8fc2f47c3c0187588430666f45dfa3dd73202edc718d17a9ed65a0114ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f40dd7aab21634eb96d18287032032dbfcee5d08575f7f2ca324cd4eaafd4770"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "278d8c525ab919b8c52ca0aac45da8d948c891a5ac47cba1bd0c124f5c5c6cac"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
