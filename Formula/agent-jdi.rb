class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.309.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a3cba642bd44f781a74ec35a5fdb85e6a15d9edccc6a1767df78ce7842b81590"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "898201011c802fd12f083bf0943c3f5325cb3ccb3e1172c1a324325c84ab4366"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc371ccf319afdabca653ec94efae5ece83ea1266fcbfdf13c862391c698b693"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ef15d1bb1e81f4f4f5501c0d10793bc9b26797af3785cf9ad757f287002eb8f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
