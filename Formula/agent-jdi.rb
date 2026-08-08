class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b15212e36bd6b373a27dc2d1b15d1752a6e47f20c6602bace258085af74a62c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "043407f71b2f9c169fff89f8070fa51af8bd90d0eb5ba2da459cdf25f087e896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f992ce72465387620721dbbac3fa1aef2882b4320c10b573cf734c06a3fb3770"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "718f55bec2ad2ab78d4cb0deca790268f6033ca0f49ba0b8caedd86b2e5d8ccf"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
