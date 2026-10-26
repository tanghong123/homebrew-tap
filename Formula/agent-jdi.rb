class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.430.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f145342b8d95dd8ddbe09dfd3b23fd8122af533ca26718bb068a8145f0b4c777"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e45accb48da01b772cdf9f634d1488c3ae30943f85159468c3e4fcc14ba44626"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e9a02c8ceeb49524005d158154ca698ce111d60b92529caadc5f834da3b3d10"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fd68ab1c5e7fadb3cbc80b0a236a08e3100bc85182d9fb40cc363869fc3d443"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
