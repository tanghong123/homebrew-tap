class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.301.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c06bd44dee1db275a6aa1bfbd9030a7b4d69e6a3c683b0aa899f7be948c734bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b60f0ac6c7bb94c4d899f1b0d06b8c4dcbf6d6827960699308ed65300a6527df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e237974be077427ff1ad31161bb831d5a0cd513b859af52bf9ba8166131e732"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d071d67cb6cae3d64e98aab38c3248c79c3808a1ec307f9e3f27331a9dc4c667"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
