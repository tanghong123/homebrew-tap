class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "83f38decee081145abc35eb01d2a943b3dda57886931dc433f41b25835013082"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea2cb81f659a0ffe8b198c717a617fed99278875f4cd7a8b6d1dc373d053d7e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd39331f4bb11b206c7a7b72cc5998893556106e6416b82e92186e083ee85b20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93263d59bf0211e277bda65a5806a5765bcfa51706ad1a6e48f31c0bbef72917"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
