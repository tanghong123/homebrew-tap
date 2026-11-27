class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.575.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "eae78d0f854eab27ae646b3c3da43546a1840d3ff6b9c4515001cbc359c9f03f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ae370793f80114bbae4f5ef55401a388309589f856b7d61881a0e61c3215230b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d82c223b3a203ebd19fc62f363022a01efc7a5fb1aac5bddfbbc5ff6cb3ab1d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef28b5948763ed3e0fae5f6afdd44f822eb09896223a18fbf89cee3fbf6b647b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
