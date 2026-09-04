class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.155.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "24911ae95171191caa1ce37bad6cf9693903d56941595fb3035b4d804c119c64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ebc3fb16f7abecbe9d4b9a5a8ab7ff99a750d3f9bb3f57b4604a5b97a18e99e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc1a1093af2416fcaaf92287fe89cdf2e10ff1c39bb8d799182728783adfbb10"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50657c3a60bcec5b04c3f5c69c515a9da137cd9cd90653cf695542d1dd61acd8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
