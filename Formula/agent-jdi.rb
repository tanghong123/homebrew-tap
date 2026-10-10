class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.370.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "50c770f0bb42c2132ebb92b67781af9ab601b398b0dcdd72f627bed7f41bbed2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7728e47fd37bb9f3f0f71beedfa2f05f934bdb1d44f673cde13fa6c5c238f11c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76668a715e60db1316db0c777641d771ce765e2af8b9ce6f3a345a0c1b387b83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "824cf9f9df40097f0423183379d770fd3220fae0bab3541d7d6a85394ea85a44"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
