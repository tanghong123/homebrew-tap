class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.90.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0df66ad894975415127d5a45b2c2679e7a986c26ac4b088a70227f14c0e12b57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0b95c8acf643104fb797a2084dcb5929f59c689f5aa8568edc629acace7d27eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a011492e5019bf8df5d6be17898c2715dd2c8266f44464843b5d55ec0a7d3719"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67f578cbc9e98a8506b009c2400d432deb7e679c566891c91f74f6b14463a379"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
