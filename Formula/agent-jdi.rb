class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.375.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f79e667f68e13dab66f509c5ec0b618dce41b76802353b9ebc277e67c346582c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "940a1b55a79aaae1d0e6ac731d77a04b2005ce06a79d8a7b9a00e756004f4b3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed5591a23798a49c252a8b9bca454c28be164b6b5145c3bb02a97a3928321555"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81fcd1693b7fa56c3d9b84914aa8bafd633df8c1cf23ea36634da5380b4799df"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
