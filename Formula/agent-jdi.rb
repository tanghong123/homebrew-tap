class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.371.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f02b9f96fa4fff44922861eb0f1f8a4fb752fa48d6521228ce3e117d052d1ad9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "381ab140fa7284042ff5cc6121ddca54b338f6427b5c3d8d951b5501b4451807"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e705279f17ab5055ab6884a42d7942647754b6ad7b2bc0276e781c7425a8663"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90723fe115db099fab900efc499138cf8e6f2b93b7ac5342d2bd41da17cddf91"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
