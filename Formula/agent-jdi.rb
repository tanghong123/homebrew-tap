class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.432.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1c24af6a7111e260b4ba291c46b9393a99f955c734070b45c0026d2820e5eb6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9e80d3fac825f05895712fdc9f8f0f0aadff6e717ee9714fb2e9b8cf3ab7f4f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8b087bb8044c98ff59dda496ba4120bff2ff17b7e7bbe2f96cfb11bae49f3bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9898d9af3ace51c58b5ae5c3ea470c8dd7672811fe2103b21b8a08294e7ecaa9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
