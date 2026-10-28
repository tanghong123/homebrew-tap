class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.442.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d81585117e32b22ecc978c48979d200740312cadf396423e2b628c2f71bad0a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "59012c50a90e0a9b6720c244c2b9afc50dc4278b21ff6a7a28ad17d5a6965461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80a870e1fd9f6698168c28ccd3907f1488e729a48b0ab8698793bf6421c1ef14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d1b4ef72c481c428e2e1aedeca10de51cf90beb82e6294081f2672c3022e412"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
