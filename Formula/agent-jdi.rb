class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.48.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a40e097254cf2b86bf5df6dff1f91a652fd2b1fd6d4d2ae4b2c863693c247920"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c32abc07e8049633a2ed36bee85bae4c9588f95e75d1ba7b58141a5700b6255e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9fb85b9e5e50030ce4cca0db9fd657116ec789eecaaef5feb7bf2a5e1fa292a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "106979f2ecb3d42151a93fef3a7a3a91df7f438756aa61702f08689db620302a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
