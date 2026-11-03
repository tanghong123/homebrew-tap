class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.464.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5551205576fb1a7ee00f0985a0f27c06737e03dfcb646b37718c9429625dd442"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9eb3da96f8cd825335a0b70f33a2b8613efaa85ad5c520f3a02760fc5c523c50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22b84f1eb0be5c4637936c2ac9297684fb0a62e00751159baafa269f0b52b951"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8080022f7aba1255bb294a854b639fe908571e88c4022a9c33b19d87d8baedd7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
