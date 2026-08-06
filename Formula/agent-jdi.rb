class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.43.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dcde20070fdce872ebc42078f40ec6938056dc2ae112c227e85060d33d507665"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5dc8fe101932cb66ba3e2c8ab27a8fccfd64b5ed53e5723f205a5337e669e73a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e05e98e7fc75555044311b8afcbb150baea1e5e61ff8384737cb6474701a8ca9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4030830eba5ed8d6b7149f0aa4bb2f40949517df522fc590fc6a889f69d805eb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
