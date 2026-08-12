class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4948163a1aee6536f986048b6419460a85d75998a7354273df8e5289d02883e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2e9f51e42d9c4f103696a2960999e00c303769920d8c5c39dd9fc6ef32d50540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f26faf95f726428eda1034f59bb6330f56fd49eaf0f4c423c32a10120fabf3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "116677fe27cac63f4453da6221bb6ff57711bcf6eae085b0d380ded7e4077fb2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
