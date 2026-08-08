class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2f7c32ca5a22fccb1cb5571a52aaac0c9dafbbf722c5d286bcacb066c847e6e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0b85624d6185dd6973490c5f0cfe353ea584ae6f03a78e72bd136ed643c6c455"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "925e7e56f8a7741328c65686e4dfcde392edad1edb259323914c4ecb81d59dcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b306c31afaae1079fe1f619e9170c9865ce6cf8df13496c13b3b09f033452dd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
