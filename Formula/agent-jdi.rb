class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.501.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5a32490a3f7ed62bcf9c8a005f30162fbf27bd7f8e8ba4d00e83311ba9ac5a55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e051c68e4aaa265de7cee4f13256d045ebd9fcbbc313266c853452e99b02b541"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fb5757603796f7505204b09aa0bbda9f988e36292053b87659d33ae145a7fe5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68b0b24ca6e42295eaf241b60664f1612b79711b27f4613192d58cb73951a04c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
