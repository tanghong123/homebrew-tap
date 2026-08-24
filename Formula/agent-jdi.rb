class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "294875bf5fdb56c9117c9e2bac3f884bbe3fc107d9a77768d88bf77f05f76210"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8e50b1b87c3f92d78ada8df25b11223c1776796acf2c76c60c02e83bcef2a842"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edc3a04d8d97517f81f48563406aeeae056b249bef5739eef8257b059df14f87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d843a4f599bb96e4fa28a8caa3e96aaae69289c2b28de43537ab6dc8344c216e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
