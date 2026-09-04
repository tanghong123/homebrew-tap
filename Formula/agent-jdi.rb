class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.179.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e26606215acbe2893227741a7cb44e97eefae19926e740913db04e3c9ae61515"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3ed09337686bd9a49a575a0d8dff50418cb79b432e9ab1dbd22f6a73bfc0dc50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70559eb97e8e1088e341bca3af82e7c16cb55f7cd1907e0f2dd7d170d133e044"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47a56108e99e07aafb94176b83ab2f25b68f09ad226bd0f6032ba64d008bba9a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
