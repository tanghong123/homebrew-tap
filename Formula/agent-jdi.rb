class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.268.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e9e7019e542762ab69aa77e9866ad444bd9b56d275ba098f07fb78c6e5b519c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6926807dd4d180b55dfdf1c7edb067bfea5108baa9eb065070d4c31c055580b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86765132faa070f431a32dd05fc982a700634ca85083d4bd9a31e3b37fe7ba00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "769df493b3aa43caa8d2712c647275695ea97e82b1313a740ab063d790b08744"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
