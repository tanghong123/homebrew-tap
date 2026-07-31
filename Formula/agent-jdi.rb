class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8c0d8c8accd87a152a7614c92d74f0ab8ee9a8f6b9155d6e757daba89d1dc434"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9e1c7ea5f8eba8c1b2f9618f3aeb89b5937aface77d5b78e203c142a5b85d5b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "991a6b41e69f1d3ac9efbf53ca8cab838d76263502ce3b81ed6b8842caa5d145"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b9a90f2c715497799a9f8998040536b647a8ab5b7114fbbb70c278bff5b0845"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
