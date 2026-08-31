class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.125.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b7910f53f6a90f7b20822a5e901ed439ca37bb237a8928cb286e82854812229a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c34381568ce15229465762bf2ff5a17acbc0bb827b928fac68b0dc534088ee96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc88a73246e5872d525b943a62f8815cfa79f0dcff622f812b777d36cd827f0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4507a888df7663e0735927317a94e795cff847587ae0f8420cea183e52c46c54"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
