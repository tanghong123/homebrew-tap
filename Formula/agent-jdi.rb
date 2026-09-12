class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.263.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c94ce23b893843b210076d30455038fcfbb93ec12c3d9ec37a87927617290801"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f329a54b50a27ef9b9d913569995813950aeb4b5ffc2bab012834aa0b4aafb5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f020f151e9b690f9fc5e13074ff9332bc45154830af5da8a039d83c9dc0fc33f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b48999ae91a44771fb47bf02b3a07df5e0b65fc540020cf74c52b93504a3a9f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
