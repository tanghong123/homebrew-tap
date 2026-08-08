class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f88ba05d199293c02eae1cb5841e3496d415dff3b9e2f3838ac629cec1ab4b7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b4300fe2d669acf03f020e86ad217b56fc364ef49d621ce833f5141cb83879fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f733e4701dffc77702b6965bcd9d20ffddf273b3c98dbba98931580fda1459d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bc913e819c33288949ae8b11cb5face5b3931df098af3dd69271893be259daf"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
