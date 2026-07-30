class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.15.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "97adc3395438e6c9ba2885044eda9285cee701550240acc91bd80bc0538ca04e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9a07200f0bec53ed09c50a7c7dfedef57293df5cd871f5ef3be1a8f5227e6c7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42a2cf8693c0500df2a651a5fa196b0e913c9182419a225cc59dc1045e7f5dd2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "698b9759093ab7f8feea0debd533063bc2712b057a9a280870dbed659217c8b7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
